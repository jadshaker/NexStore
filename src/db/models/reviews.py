from datetime import datetime
from typing import Optional

from pydantic import NonNegativeInt

from src.common.utils.types import VC, PhoneNumber, Text
from src.db.models import BaseModel


class Reviews(BaseModel):
    product_SKU: VC
    customer_phone_number: PhoneNumber
    review_date: datetime
    rating: NonNegativeInt
    comment: Optional[Text]
    description: Optional[Text]
