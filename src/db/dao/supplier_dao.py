from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Supplier
from src.db.tables import SupabaseTables


class SupplierDAO(BaseDAO[Supplier]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.SUPPLIER, Supplier)
