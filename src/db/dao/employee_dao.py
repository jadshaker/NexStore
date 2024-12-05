from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Employee
from src.db.tables import SupabaseTables


class EmployeeDAO(BaseDAO[Employee]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.EMPLOYEE, Employee)
