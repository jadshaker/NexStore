from datetime import datetime
from typing import Optional

from pydantic import NonNegativeInt

from src.common.utils.types import ID, VC, PhoneNumber, Text
from src.db.models import BaseModel


class Orders(BaseModel):
    order_id: ID
    notes: Optional[Text]
    payment_method: VC
    total_amount: NonNegativeInt
    is_online: bool = False
    employee_ssn: Optional[VC]
    customer_phone_number: PhoneNumber
    date: datetime
    driver_license_number: Optional[VC]
