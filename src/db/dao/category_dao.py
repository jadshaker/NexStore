from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Category
from src.db.tables import SupabaseTables


class CategoryDAO(BaseDAO[Category]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.CATEGORY, Category)
