from supabase import Client

from src.db.views import BaseView
from src.db.models import CustomerOrders
from src.db.tables import SupabaseTables


class CustomerOrdersDAO(BaseView[CustomerOrders]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.CUSTOMER_ORDERS, CustomerOrders)
