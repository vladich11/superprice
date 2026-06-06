from fastapi import APIRouter

from core.db import get_pool

router = APIRouter()


@router.get("/api/products/search")
async def search_products(query: str, limit: int = 20, offset: int = 0):
    q = query.strip()
    if len(q) < 2:
        return {"items": [], "limit": limit, "offset": offset, "has_more": False}

    pool = await get_pool()
    async with pool.acquire() as conn:
        rows = await conn.fetch(
            """SELECT barcode, name, manufacturer
               FROM products
               WHERE name ILIKE '%' || $1 || '%'
               ORDER BY name
               LIMIT $2 OFFSET $3""",
            q, limit, offset,
        )

    items = [
        {
            "id": str(r["barcode"]),
            "productBarcode": r["barcode"],
            "internalBarcode": 0,
            "productName": r["name"],
            "manufacturerOrImporterName": r["manufacturer"] or "",
            "countryOfOrigin": "",
            "productDescription": "",
            "productQuantityMeasure": "",
            "productQuantity": 0,
            "unitOfMeasure": "",
            "itemsPerPackage": 0,
            "isWeighted": 0,
            "itemType": 1,
            "lastUpdated": None,
        }
        for r in rows
    ]
    return {
        "items": items,
        "limit": limit,
        "offset": offset,
        "has_more": len(items) == limit,
    }
