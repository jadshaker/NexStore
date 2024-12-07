from src.controller.routers.dao._base_router import BaseRouter
from src.db.dependencies import get_product_image_urls_dao
from src.db.models import ProductImageUrls

product_image_urls_class = BaseRouter[ProductImageUrls](
    prefix="/product_image_urls",
    tags=["Product Image Urls"],
    name="Product Image Urls",
    model=ProductImageUrls,
    get_dao=get_product_image_urls_dao,
)

product_image_urls_router = product_image_urls_class.build_router()
