from pydantic import NonNegativeInt

from src.common.utils.types import VC, PhoneNumber
from src.db.models import BaseModel


class LocatedIn(BaseModel):
    product_sku: VC
    branch_phone_number: PhoneNumber
    quantity: NonNegativeInt
    shelf_location: VC
