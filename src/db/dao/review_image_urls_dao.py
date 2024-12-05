from supabase import Client

from src.db.dao import BaseDAO
from src.db.models import ReviewImageUrls
from src.db.tables import SupabaseTables


class ReviewImageUrlsDAO(BaseDAO[ReviewImageUrls]):
    def __init__(self, client: Client):
        super().__init__(client, SupabaseTables.REVIEW_IMAGE_URLS, ReviewImageUrls)
