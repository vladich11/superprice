from fastapi import APIRouter, HTTPException
from pydantic import BaseModel

from core.db import get_pool

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
    savingsVsCheapest: float


@router.post("/api/cart-comparison", response_model=CartComparisonResponse)
async def cart_comparison(items: list[CartItem]):
    if not items:
        raise HTTPException(400, "items must not be empty")
    if len(items) > 50:
        raise HTTPException(400, "maximum 50 items per comparison")

    by_barcode = {i.barcode: i for i in items}
    barcodes = list(by_barcode.keys())

    pool = await get_pool()
    async with pool.acquire() as conn:
        rows = await conn.fetch(
            """SELECT chain_id, chain_name, barcode, price
               FROM prices
               WHERE barcode = ANY($1::bigint[])""",
            barcodes,
        )

    if not rows:
        raise HTTPException(404, "No price data found for any item")

    # Products that exist in the price DB at all (don't penalise chains for a
    # product nobody stocks).
    available = {r["barcode"] for r in rows}

    # Aggregate per chain
    chain_map: dict[str, dict] = {}
    for r in rows:
        item = by_barcode[r["barcode"]]
        multiplier = _UNIT_TO_KG.get(item.unit, 1.0) * item.quantity
        unit_price = float(r["price"])
        line_total = unit_price * multiplier
        cid = r["chain_id"]
        if cid not in chain_map:
            chain_map[cid] = {"name": r["chain_name"], "total": 0.0, "itemPrices": [], "covered": set()}
        chain_map[cid]["total"] += line_total
        chain_map[cid]["covered"].add(r["barcode"])
        chain_map[cid]["itemPrices"].append(
            ChainItemPrice(
                barcode=r["barcode"],
                productName=item.productName,
                unitPrice=round(unit_price, 2),
                lineTotal=round(line_total, 2),
            )
        )

    # Only chains carrying every available product count as complete
    complete = {cid: v for cid, v in chain_map.items() if v["covered"] == available}
    if not complete:
        raise HTTPException(404, "No single chain carries all of the products in your cart")

    sorted_chains = sorted(complete.items(), key=lambda kv: kv[1]["total"])
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
            unmatchedBarcodes=sorted(available - v["covered"]),
        )
        for cid, v in sorted_chains
    ]

    return CartComparisonResponse(
        chains=chains_out,
        cheapestChainId=cheapest_id,
        savingsVsCheapest=round(savings, 2),
    )
