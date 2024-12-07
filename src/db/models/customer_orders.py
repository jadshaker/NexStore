from src.common.utils.types import VC, PhoneNumber
from pydantic import NonNegativeInt
from src.db.models import BaseModel


class CustomerOrders(BaseModel):
    phone_number: PhoneNumber
    first_name: VC
    last_name: VC
    total_orders: NonNegativeInt
