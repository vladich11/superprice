from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    database_url: str = ""
    firebase_credentials_path: str = "./secrets/firebase-credentials.json"

    class Config:
        env_file = ".env"


settings = Settings()
