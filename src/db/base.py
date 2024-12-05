from supabase import Client, create_client

from src.config import Config


def get_client() -> Client:
    if Config.SUPABASE.KEY is None or Config.SUPABASE.URL is None:
        raise ValueError("SUPABASE_KEY and SUPABASE_URL must be set in the environment")
    return create_client(
        supabase_url=Config.SUPABASE.URL,
        supabase_key=Config.SUPABASE.KEY,
    )
