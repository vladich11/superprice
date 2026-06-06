import time
import asyncio
from datetime import datetime, timedelta, timezone

import httpx
from fastapi import APIRouter

from core.config import settings

router = APIRouter()


def _iso(d: datetime) -> str:
    return d.strftime("%Y-%m-%dT%H:%M:%SZ")


def _checks() -> list[dict]:
    now = datetime.now(timezone.utc)
    week = now - timedelta(days=7)
    return [
        {"name": "Ready", "path": "/health/ready", "params": {}},
        {"name": "Data Freshness", "path": "/health/data-freshness", "params": {}},
        {"name": "Pipeline Health", "path": "/health/pipeline", "params": {}},
        {
            "name": "Sites",
            "path": "/health/sites",
            "params": {"start_time": _iso(week), "end_time": _iso(now)},
        },
        {
            "name": "Processing Timeline",
            "path": "/health/processing-timeline",
            "params": {"start_time": _iso(week), "end_time": _iso(now), "bucket_minutes": 60},
        },
        {
            "name": "Row Processing Timeline",
            "path": "/health/row-processing-timeline",
            "params": {"start_time": _iso(week), "end_time": _iso(now), "bucket_minutes": 60},
        },
    ]


@router.get("/api/health-checks")
async def health_checks():
    headers = {
        "Authorization": f"Bearer {settings.openism_api_key}",
        "Accept": "application/json",
    }

    async def probe(check: dict) -> dict:
        url = f"{settings.openism_base_url}{check['path']}"
        t0 = time.perf_counter()
        try:
            async with httpx.AsyncClient(timeout=20) as client:
                r = await client.get(url, headers=headers, params=check["params"])
            ms = round((time.perf_counter() - t0) * 1000)
            ok = r.status_code == 200
            try:
                summary = str(r.json())[:400]
            except Exception:
                summary = r.text[:400]
            return {
                "name": check["name"],
                "path": check["path"],
                "ok": ok,
                "status": r.status_code,
                "latencyMs": ms,
                "summary": summary,
            }
        except Exception as e:
            ms = round((time.perf_counter() - t0) * 1000)
            return {
                "name": check["name"],
                "path": check["path"],
                "ok": False,
                "status": 0,
                "latencyMs": ms,
                "summary": f"{type(e).__name__}: {e}",
            }

    results = await asyncio.gather(*[probe(c) for c in _checks()])
    return {"checks": list(results)}
