from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Colors
from src.db.tables import SupabaseTables


class ColorsDAO(BaseDAO[Colors]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.COLORS, Colors)
