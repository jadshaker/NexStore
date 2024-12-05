from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import SupportTicket
from src.db.tables import SupabaseTables


class SupportTicketDAO(BaseDAO[SupportTicket]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.SUPPORT_TICKET, SupportTicket)
