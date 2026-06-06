import os
from pathlib import Path

import asyncpg

from core.config import settings

_pool: asyncpg.Pool | None = None


def _dsn() -> str:
    # asyncpg doesn't accept the libpq "?sslmode=require" suffix; strip it
    # and pass ssl separately via the pool.
    return settings.database_url.replace("?sslmode=require", "")


async def get_pool() -> asyncpg.Pool:
    global _pool
    if _pool is None:
        _pool = await asyncpg.create_pool(_dsn(), ssl="require", min_size=1, max_size=5)
    return _pool


async def init_db() -> None:
    """Create tables from migrations.sql (idempotent)."""
    sql = Path(__file__).resolve().parent.parent.joinpath("migrations.sql").read_text(encoding="utf-8")
    pool = await get_pool()
    async with pool.acquire() as conn:
        await conn.execute(sql)


async def close_pool() -> None:
    global _pool
    if _pool is not None:
        await _pool.close()
        _pool = None
