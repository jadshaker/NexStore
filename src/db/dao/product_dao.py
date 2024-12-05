from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Product
from src.db.tables import SupabaseTables


class ProductDAO(BaseDAO[Product]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.PRODUCT, Product)
