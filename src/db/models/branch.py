from typing import Optional

from pydantic import NonNegativeInt

from src.common.utils.types import VC, PhoneNumber
from src.db.models import BaseModel


class Branch(BaseModel):
    phone_number: PhoneNumber
    name: VC
    country: VC
    state: VC
    city: VC
    street: VC
    building: NonNegativeInt
    apartment: NonNegativeInt
    employee_ssn: Optional[VC]
