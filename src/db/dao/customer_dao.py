from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Customer
from src.db.tables import SupabaseTables


class CustomerDAO(BaseDAO[Customer]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.CUSTOMER, Customer)
