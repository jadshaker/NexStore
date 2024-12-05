from pydantic import NonNegativeFloat, NonNegativeInt

from src.common.utils.types import ID, VC
from src.db.models import BaseModel


class Purchased(BaseModel):
    product_sku: VC
    order_id: ID
    quantity: NonNegativeInt
    amount: NonNegativeFloat
