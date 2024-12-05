from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import DepartmentLocation
from src.db.tables import SupabaseTables


class DepartmentLocationDAO(BaseDAO[DepartmentLocation]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.DEPARTMENT_LOCATION, DepartmentLocation)
