import firebase_admin
from firebase_admin import credentials, firestore
from core.config import settings

_app = None


def get_firestore():
    global _app
    if _app is None:
        cred = credentials.Certificate(settings.firebase_credentials_path)
        _app = firebase_admin.initialize_app(cred)
    return firestore.client()
