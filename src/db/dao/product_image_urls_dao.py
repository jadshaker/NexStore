from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import ProductImageUrls
from src.db.tables import SupabaseTables


class ProductImageUrlsDAO(BaseDAO[ProductImageUrls]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.PRODUCT_IMAGE_URLS, ProductImageUrls)
