from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
from core import openism_client

router = APIRouter()


class Replacement(BaseModel):
    barcode: int
    productName: str
    manufacturer: str
    minPrice: float
    avgPrice: float
    chainName: str  # cheapest chain for this alternative
    savingsVsOriginal: float


class ReplacementsResponse(BaseModel):
    originalBarcode: int
    originalMinPrice: float
    replacements: list[Replacement]


@router.get("/api/replacements/{barcode}", response_model=ReplacementsResponse)
async def get_replacements(barcode: int):
    # Get original product price data
    try:
        original_data = await openism_client.get_cross_chain_comparison(barcode)
    except Exception:
        raise HTTPException(404, f"Product {barcode} not found")

    overall = original_data.get("overall_statistics", {})
    original_min: float = overall.get("min_price", 0.0)
    product_name: str = original_data.get("product_name", "")

    if not product_name:
        raise HTTPException(404, "Product name not found, cannot search alternatives")

    # Search for similar products by name (take first word/brand as the query)
    # e.g. "חלב תנובה 3%" → search "חלב 3%" to find alternatives from other brands
    words = product_name.split()
    # Drop the first word if it looks like a brand (heuristic: use words 1..N, skip brand at position 0)
    alt_query = " ".join(words[1:]) if len(words) > 1 else product_name

    try:
        candidates = await openism_client.search_products(alt_query, limit=10)
    except Exception:
        candidates = []

    replacements: list[Replacement] = []
    for candidate in candidates:
        cand_barcode = candidate.get("product_barcode", 0)
        if cand_barcode == barcode or cand_barcode == 0:
            continue
        try:
            cand_data = await openism_client.get_cross_chain_comparison(cand_barcode)
        except Exception:
            continue

        cand_overall = cand_data.get("overall_statistics", {})
        cand_min: float = cand_overall.get("min_price", 0.0)
        if cand_min <= 0 or cand_min >= original_min:
            continue

        # Find cheapest chain for this candidate
        chain_comp: list[dict] = cand_data.get("chain_comparison", [])
        cheapest_chain = min(chain_comp, key=lambda c: c.get("min_price", 9999), default={})

        replacements.append(
            Replacement(
                barcode=cand_barcode,
                productName=cand_data.get("product_name", ""),
                manufacturer=candidate.get("manufacturer_or_importer_name", ""),
                minPrice=cand_min,
                avgPrice=cand_overall.get("avg_price", cand_min),
                chainName=cheapest_chain.get("chain_name", ""),
                savingsVsOriginal=round(original_min - cand_min, 2),
            )
        )

    replacements.sort(key=lambda r: r.savingsVsOriginal, reverse=True)

    return ReplacementsResponse(
        originalBarcode=barcode,
        originalMinPrice=original_min,
        replacements=replacements[:5],
    )
