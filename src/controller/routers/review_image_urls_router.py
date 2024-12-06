from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_review_image_urls_dao
from src.db.models import ReviewImageUrls

review_image_urls_class = BaseRouter[ReviewImageUrls](
    prefix="/review_image_urls",
    tags=["Review Image Urls"],
    name="Review Image Urls",
    model=ReviewImageUrls,
    get_dao=get_review_image_urls_dao,
)

review_image_urls_router = review_image_urls_class.build_router()
