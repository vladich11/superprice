"""
Scrapes PriceFull snapshots from Israeli supermarket portals and upserts them
into Postgres (Neon). Runs on Linux (GitHub Actions) — NOT on Windows, because
the underlying library uses the Unix-only `fcntl` module + multiprocessing spawn.

Flow: ScarpingTask downloads .gz price files -> parse XML -> upsert products+prices.
"""

import os
import gzip
import glob
import asyncio
import xml.etree.ElementTree as ET

import asyncpg
from il_supermarket_scarper import ScarpingTask

# (ScraperFactory enum name, human-readable chain name). One representative
# store per chain (limit=1) keeps the POC tiny; expand later for per-store data.
CHAINS = [
    ("RAMI_LEVY", "רמי לוי שיווק השקמה"),
    ("SHUFERSAL", "שופרסל"),
    ("VICTORY", "ויקטורי"),
]

DUMP_DIR = "dumps"


def _read_xml(path: str) -> bytes:
    """Return decompressed XML bytes whether the file is .gz or plain .xml."""
    with open(path, "rb") as f:
        head = f.read(2)
    if head == b"\x1f\x8b":  # gzip magic
        with gzip.open(path, "rb") as f:
            return f.read()
    with open(path, "rb") as f:
        return f.read()


def _text(item: ET.Element, *names: str) -> str:
    """Find the first child whose (lowercased) tag matches any of `names`."""
    wanted = {n.lower() for n in names}
    for child in item:
        if child.tag.lower() in wanted and child.text:
            return child.text.strip()
    return ""


def parse_pricefull(path: str) -> tuple[str, list[dict]]:
    """Parse one PriceFull file -> (chain_id, [{barcode, name, manufacturer, price}])."""
    xml = _read_xml(path)
    root = ET.fromstring(xml)

    chain_id = ""
    for el in root.iter():
        if el.tag.lower() == "chainid" and el.text:
            chain_id = el.text.strip()
            break

    items: list[dict] = []
    for item in root.iter():
        if item.tag.lower() not in ("item", "product"):
            continue
        code = _text(item, "ItemCode")
        price = _text(item, "ItemPrice")
        if not code or not price:
            continue
        try:
            barcode = int(code)
            price_f = float(price)
        except ValueError:
            continue
        if barcode == 0 or price_f <= 0:
            continue
        items.append({
            "barcode": barcode,
            "name": _text(item, "ItemName", "ManufacturerItemDescription"),
            "manufacturer": _text(item, "ManufacturerName"),
            "price": round(price_f, 2),
        })
    return chain_id, items


async def upsert(pool: asyncpg.Pool, chain_id: str, chain_name: str, items: list[dict]):
    # Dedupe by barcode (a store file can list a product more than once)
    by_barcode = {i["barcode"]: i for i in items}
    rows = list(by_barcode.values())

    async with pool.acquire() as conn:
        async with conn.transaction():
            await conn.executemany(
                """INSERT INTO products (barcode, name, manufacturer, updated_at)
                   VALUES ($1, $2, $3, now())
                   ON CONFLICT (barcode) DO UPDATE
                     SET name = EXCLUDED.name,
                         manufacturer = EXCLUDED.manufacturer,
                         updated_at = now()""",
                [(r["barcode"], r["name"], r["manufacturer"]) for r in rows],
            )
            await conn.executemany(
                """INSERT INTO prices (chain_id, chain_name, barcode, price, updated_at)
                   VALUES ($1, $2, $3, $4, now())
                   ON CONFLICT (chain_id, barcode) DO UPDATE
                     SET price = EXCLUDED.price,
                         chain_name = EXCLUDED.chain_name,
                         updated_at = now()""",
                [(chain_id, chain_name, r["barcode"], r["price"]) for r in rows],
            )
    return len(rows)


async def main():
    dsn = os.environ["DATABASE_URL"].replace("?sslmode=require", "")
    pool = await asyncpg.create_pool(dsn, ssl="require", min_size=1, max_size=4)

    import shutil
    succeeded = 0

    for enum_name, chain_name in CHAINS:
        print(f"\n=== {chain_name} ({enum_name}) ===", flush=True)
        # Reset dumps so a stale file from a prior/failed chain can't be misread
        shutil.rmtree(DUMP_DIR, ignore_errors=True)
        try:
            task = ScarpingTask(
                enabled_scrapers=[enum_name],
                files_types=["PRICE_FULL_FILE"],
                limit=1,                # one store per chain (lean POC)
                multiprocessing=1,
                lookup_in_db=False,     # no external status DB
                suppress_exception=True,
            )
            task.start()                # synchronous in 0.5.9 (no join needed)

            files = glob.glob(f"{DUMP_DIR}/**/*", recursive=True)
            price_files = [f for f in files if os.path.isfile(f) and "price" in f.lower()]
            if not price_files:
                print(f"  no file downloaded for {enum_name}", flush=True)
                continue

            path = max(price_files, key=os.path.getmtime)
            chain_id, items = parse_pricefull(path)
            print(f"  downloaded {os.path.basename(path)} ({os.path.getsize(path)} bytes), parsed {len(items)} items", flush=True)
            if not items:
                continue

            n = await upsert(pool, chain_id or enum_name, chain_name, items)
            print(f"  upserted {n} products/prices (chain_id={chain_id})", flush=True)
            succeeded += 1
        except Exception as e:
            import traceback
            print(f"  ERROR scraping {enum_name}: {type(e).__name__}: {e}", flush=True)
            traceback.print_exc()
            continue

    async with pool.acquire() as conn:
        total = await conn.fetchval("SELECT count(*) FROM prices")
        chains = await conn.fetch("SELECT chain_name, count(*) FROM prices GROUP BY chain_name")
    print(f"\n=== DONE. {total} total price rows ===", flush=True)
    for c in chains:
        print(f"  {c['chain_name']}: {c['count']}", flush=True)

    await pool.close()


if __name__ == "__main__":
    asyncio.run(main())
