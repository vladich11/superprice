from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from routers import parse, cart, replacements, products, health_checks

app = FastAPI(title="Superprice API", version="1.0.0")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # tighten in production
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(parse.router)
app.include_router(cart.router)
app.include_router(replacements.router)
app.include_router(products.router)
app.include_router(health_checks.router)


@app.get("/health")
async def health():
    return {"status": "ok", "v": "test123"}
