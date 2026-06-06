from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    anthropic_api_key: str = ""
    openism_api_key: str
    openism_base_url: str = "https://data.openisraelisupermarkets.co.il"
    firebase_credentials_path: str = "./firebase-credentials.json"
    database_url: str = ""

    class Config:
        env_file = ".env"


settings = Settings()
