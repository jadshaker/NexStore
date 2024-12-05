from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import WorkingHours
from src.db.tables import SupabaseTables


class WorkingHoursDAO(BaseDAO[WorkingHours]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.WORKING_HOURS, WorkingHours)
