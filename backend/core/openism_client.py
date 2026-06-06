import httpx
from core.config import settings

_headers = {
    "Authorization": f"Bearer {settings.openism_api_key}",
    "Accept": "application/json",
}


async def search_products(query: str, limit: int = 5) -> list[dict]:
    url = f"{settings.openism_base_url}/products/search"
    async with httpx.AsyncClient(timeout=20) as client:
        r = await client.get(url, headers=_headers, params={"query": query, "limit": limit, "active": True})
        r.raise_for_status()
        return r.json().get("items", [])


async def get_cross_chain_comparison(barcode: int) -> dict:
    url = f"{settings.openism_base_url}/analytics/price-comparison/cross-chain/{barcode}"
    async with httpx.AsyncClient(timeout=20) as client:
        r = await client.get(url, headers=_headers)
        r.raise_for_status()
        return r.json()
