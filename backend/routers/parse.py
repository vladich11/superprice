import json
import asyncio
from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
from anthropic import AsyncAnthropic
from rapidfuzz import fuzz
from core.config import settings
from core import openism_client

router = APIRouter()
_claude = AsyncAnthropic(api_key=settings.anthropic_api_key)

_SYSTEM_PROMPT = """You are a Hebrew shopping list parser.
Given a shopping list in Hebrew (free text), extract each item as a JSON array.
Each element must have:
  - rawText: the original line/phrase for this item (string)
  - quantity: numeric amount (float, default 1)
  - unit: one of "units", "kg", "g", "l", "ml" (string)
  - productSearchQuery: a clean Hebrew product name suitable for a product search API (string)

Return ONLY valid JSON — no markdown, no explanation."""


class ParseRequest(BaseModel):
    text: str


class MatchedProduct(BaseModel):
    barcode: int
    productName: str
    manufacturer: str
    confidence: float


class ParsedItem(BaseModel):
    rawText: str
    quantity: float
    unit: str
    productSearchQuery: str
    matchedProduct: MatchedProduct | None = None


@router.post("/api/parse-items", response_model=list[ParsedItem])
async def parse_items(req: ParseRequest):
    if not req.text.strip():
        raise HTTPException(400, "text must not be empty")

    # Step 1: Claude extracts structure from free text
    message = await _claude.messages.create(
        model="claude-haiku-4-5-20251001",
        max_tokens=1024,
        system=_SYSTEM_PROMPT,
        messages=[{"role": "user", "content": req.text}],
    )
    raw_json = message.content[0].text.strip()
    try:
        parsed: list[dict] = json.loads(raw_json)
    except json.JSONDecodeError:
        raise HTTPException(502, f"Claude returned invalid JSON: {raw_json[:200]}")

    # Step 2: Search + fuzzy-rank for each item concurrently
    async def match_item(item: dict) -> ParsedItem:
        query = item.get("productSearchQuery", "")
        try:
            results = await openism_client.search_products(query, limit=5)
        except Exception:
            results = []

        matched = None
        if results:
            best = max(
                results,
                key=lambda p: fuzz.token_set_ratio(query, p.get("product_name", "")),
            )
            confidence = fuzz.token_set_ratio(query, best.get("product_name", "")) / 100
            if confidence >= 0.4:
                matched = MatchedProduct(
                    barcode=best.get("product_barcode", 0),
                    productName=best.get("product_name", ""),
                    manufacturer=best.get("manufacturer_or_importer_name", ""),
                    confidence=confidence,
                )

        return ParsedItem(
            rawText=item.get("rawText", ""),
            quantity=float(item.get("quantity", 1)),
            unit=item.get("unit", "units"),
            productSearchQuery=query,
            matchedProduct=matched,
        )

    items = await asyncio.gather(*[match_item(i) for i in parsed])
    return list(items)
