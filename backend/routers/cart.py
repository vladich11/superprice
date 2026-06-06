import asyncio
from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
from core import openism_client

router = APIRouter()

# Conversion factors to normalise quantities to the unit the price is per
_UNIT_TO_KG = {"kg": 1.0, "g": 0.001, "l": 1.0, "ml": 0.001, "units": 1.0}


class CartItem(BaseModel):
    barcode: int
    productName: str
    quantity: float
    unit: str  # "units" | "kg" | "g" | "l" | "ml"


class ChainItemPrice(BaseModel):
    barcode: int
    productName: str
    unitPrice: float
    lineTotal: float


class ChainTotal(BaseModel):
    chainId: str
    chainName: str
    total: float
    itemPrices: list[ChainItemPrice]
    unmatchedBarcodes: list[int]


class CartComparisonResponse(BaseModel):
    chains: list[ChainTotal]  # sorted cheapest first
    cheapestChainId: str
    savingsVsCheapest: float  # how much more expensive is 2nd chain vs 1st


@router.post("/api/cart-comparison", response_model=CartComparisonResponse)
async def cart_comparison(items: list[CartItem]):
    print(f"[cart] received {len(items)} items: {[i.barcode for i in items]}", flush=True)
    if not items:
        raise HTTPException(400, "items must not be empty")
    if len(items) > 50:
        raise HTTPException(400, "maximum 50 items per comparison")

    # Fetch cross-chain data for each product concurrently
    async def fetch(item: CartItem):
        try:
            data = await openism_client.get_cross_chain_comparison(item.barcode)
            print(f"[cart] barcode {item.barcode} keys: {list(data.keys()) if data else None}", flush=True)
            return item, data
        except Exception as e:
            print(f"[cart] failed to fetch barcode {item.barcode}: {type(e).__name__}: {e}", flush=True)
            return item, None

    results = await asyncio.gather(*[fetch(i) for i in items])

    # Barcodes that actually exist in the price database (have any chain data).
    # Products that exist nowhere shouldn't count against a chain's completeness.
    available_barcodes: set[int] = set()
    for item, data in results:
        if data and data.get("chainComparison"):
            available_barcodes.add(item.barcode)

    if not available_barcodes:
        raise HTTPException(404, "No price data found for any item")

    # Build per-chain totals, tracking which products each chain actually carries
    chain_map: dict[str, dict] = {}  # chainId -> {name, total, itemPrices, covered}

    for item, data in results:
        if data is None or item.barcode not in available_barcodes:
            continue

        multiplier = _UNIT_TO_KG.get(item.unit, 1.0) * item.quantity
        chain_comparison: list[dict] = data.get("chainComparison", [])

        for chain in chain_comparison:
            cid = chain.get("chainId", "")
            cname = chain.get("chainName", "")
            min_price: float = chain.get("minPrice", 0.0)
            line_total = min_price * multiplier

            if cid not in chain_map:
                chain_map[cid] = {"name": cname, "total": 0.0, "itemPrices": [], "covered": set()}

            chain_map[cid]["total"] += line_total
            chain_map[cid]["covered"].add(item.barcode)
            chain_map[cid]["itemPrices"].append(
                ChainItemPrice(
                    barcode=item.barcode,
                    productName=item.productName,
                    unitPrice=min_price,
                    lineTotal=line_total,
                )
            )

    # A chain is "complete" only if it carries every available product.
    complete_chains = {
        cid: v for cid, v in chain_map.items()
        if v["covered"] == available_barcodes
    }

    if not complete_chains:
        raise HTTPException(
            404, "No single chain carries all of the products in your cart"
        )

    sorted_chains = sorted(complete_chains.items(), key=lambda kv: kv[1]["total"])
    cheapest_id = sorted_chains[0][0]
    cheapest_total = sorted_chains[0][1]["total"]
    second_total = sorted_chains[1][1]["total"] if len(sorted_chains) > 1 else cheapest_total
    savings = second_total - cheapest_total

    chains_out = [
        ChainTotal(
            chainId=cid,
            chainName=v["name"],
            total=round(v["total"], 2),
            itemPrices=v["itemPrices"],
            unmatchedBarcodes=sorted(available_barcodes - v["covered"]),
        )
        for cid, v in sorted_chains
    ]

    return CartComparisonResponse(
        chains=chains_out,
        cheapestChainId=cheapest_id,
        savingsVsCheapest=round(savings, 2),
    )
