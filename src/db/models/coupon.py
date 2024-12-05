from datetime import datetime

from pydantic import NonNegativeFloat, NonNegativeInt

from src.common.utils.types import ID, Text
from src.db.models import BaseModel


class Coupon(BaseModel):
    code: ID
    description: Text
    discount_percentage: NonNegativeFloat
    times_used: NonNegativeInt
    minimum_order_amount: NonNegativeFloat
    maximum_discount_amount: NonNegativeFloat
    usage_limit: NonNegativeInt
    valid_from: datetime
    valid_to: datetime
    order_id: ID
    discount_amount: NonNegativeFloat
    redeem_date: datetime
