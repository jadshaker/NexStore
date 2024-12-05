from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Coupon
from src.db.tables import SupabaseTables


class CouponDAO(BaseDAO[Coupon]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.COUPON, Coupon)
