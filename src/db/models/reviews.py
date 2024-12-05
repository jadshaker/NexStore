from typing import Optional

from pydantic import NonNegativeInt

from src.common.utils.types import VC, DateStr, PhoneNumber, Text
from src.db.models import BaseModel


class Reviews(BaseModel):
    product_sku: VC
    customer_phone_number: PhoneNumber
    review_date: DateStr
    rating: NonNegativeInt
    comment: Optional[Text]
    description: Optional[Text]
