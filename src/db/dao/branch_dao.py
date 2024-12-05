from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Branch
from src.db.tables import SupabaseTables


class BranchDAO(BaseDAO[Branch]):
    def __init__(self, client: Client) -> None:
        super().__init__(client, SupabaseTables.BRANCH, Branch)
