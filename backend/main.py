from contextlib import asynccontextmanager

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from core.db import init_db, close_pool
from routers import cart, products


@asynccontextmanager
async def lifespan(app: FastAPI):
    await init_db()  # ensure tables exist
    yield
    await close_pool()


app = FastAPI(title="Superprice API", version="2.0.0", lifespan=lifespan)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # tighten in production
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(cart.router)
app.include_router(products.router)


@app.get("/health")
async def health():
    return {"status": "ok"}
