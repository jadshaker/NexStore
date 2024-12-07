from supabase import Client

from src.db.views import BaseView
from src.db.models import DepartmentEmployees
from src.db.tables import SupabaseTables


class DepartmentEmployeesDAO(BaseView[DepartmentEmployees]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.DEPARTMENT_EMPLOYEES, DepartmentEmployees)
