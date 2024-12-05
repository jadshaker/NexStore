from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Department
from src.db.tables import SupabaseTables


class DepartmentDAO(BaseDAO[Department]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.DEPARTMENT, Department)
