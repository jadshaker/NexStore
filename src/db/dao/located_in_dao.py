from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import LocatedIn
from src.db.tables import SupabaseTables


class LocatedInDAO(BaseDAO[LocatedIn]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.LOCATED_IN, LocatedIn)
