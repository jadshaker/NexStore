from typing import Optional

from pydantic import EmailStr, NonNegativeInt, NonNegativeFloat

from src.common.utils.types import VC, DateStr, PhoneNumber
from src.db.models import BaseModel


class ProductRevenue(BaseModel):
    sku: VC
    name: VC
    total_revenue: NonNegativeFloat
