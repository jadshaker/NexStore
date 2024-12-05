from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Driver
from src.db.tables import SupabaseTables


class DriverDAO(BaseDAO[Driver]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.DRIVER, Driver)
