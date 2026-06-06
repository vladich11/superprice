-- Price data scraped from chain portals (separate from Firebase shopping lists)

CREATE TABLE IF NOT EXISTS products (
    barcode       BIGINT PRIMARY KEY,
    name          TEXT NOT NULL,
    manufacturer  TEXT DEFAULT '',
    updated_at    TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS prices (
    chain_id     TEXT   NOT NULL,
    chain_name   TEXT   NOT NULL,
    barcode      BIGINT NOT NULL,
    price        NUMERIC(10, 2) NOT NULL,
    store_id     TEXT   DEFAULT '',
    updated_at   TIMESTAMPTZ NOT NULL DEFAULT now(),
    PRIMARY KEY (chain_id, barcode)
);

-- Fast lookups for cart comparison (WHERE barcode = ANY(...))
CREATE INDEX IF NOT EXISTS idx_prices_barcode ON prices (barcode);

-- Fast product search by name
CREATE INDEX IF NOT EXISTS idx_products_name ON products USING gin (to_tsvector('simple', name));
