from pydantic import NonNegativeFloat

from src.common.utils.types import VC, PhoneNumber
from src.db.models import BaseModel


class Wishlist(BaseModel):
    product_SKU: VC
    customer_phone_number: PhoneNumber
    total_amount: NonNegativeFloat
