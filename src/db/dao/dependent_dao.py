from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Dependent
from src.db.tables import SupabaseTables


class DependentDAO(BaseDAO[Dependent]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.DEPENDENT, Dependent)
