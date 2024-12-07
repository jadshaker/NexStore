from supabase import Client

from src.db.views import BaseView
from src.db.models import ProductRevenue
from src.db.tables import SupabaseTables


class ProductRevenueDAO(BaseView[ProductRevenue]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.PRODUCT_REVENUE, ProductRevenue)
