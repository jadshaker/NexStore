from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import Wishlist
from src.db.tables import SupabaseTables


class WishlistDAO(BaseDAO[Wishlist]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.WISHLIST, Wishlist)
