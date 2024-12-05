from datetime import date

from pydantic import NonNegativeFloat, NonNegativeInt

from src.common.utils.types import ID, Text, DateStr
from src.db.models import BaseModel


class Coupon(BaseModel):
    code: ID
    description: Text
    discount_percent: NonNegativeFloat
    times_used: NonNegativeInt
    minimum_order_amount: NonNegativeFloat
    maximum_order_amount: NonNegativeFloat
    usage_limit: NonNegativeInt
    valid_from: DateStr
    valid_to: DateStr
    order_id: ID
    discount_amount: NonNegativeFloat
    redeem_date: DateStr
