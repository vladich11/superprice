from fastapi import APIRouter
from core import openism_client

router = APIRouter()


@router.get("/api/products/search")
async def search_products(query: str, limit: int = 20, offset: int = 0):
    try:
        items = await openism_client.search_products(query, limit=limit)
        return {"items": items, "limit": limit, "offset": offset, "has_more": False}
    except Exception as e:
        return {"items": [], "limit": limit, "offset": offset, "has_more": False}
