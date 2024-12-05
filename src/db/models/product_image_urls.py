from src.common.utils.types import VC
from src.db.models import BaseModel


class ProductImageUrls(BaseModel):
    product_sku: VC
    product_image_url: VC
