from src.common.utils.types import VC, PhoneNumber
from src.db.models import BaseModel


class ReviewImageUrls(BaseModel):
    product_sku: VC
    customer_phone_number: PhoneNumber
    product_image_url: VC
