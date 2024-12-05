from typing import Optional

from src.common.utils.types import VC, PhoneNumber
from src.db.models import BaseModel


class Branch(BaseModel):
    __tablename__ = "branch"
    phone_number: PhoneNumber
    name: VC
    country: VC
    state: VC
    city: VC
    street: VC
    building: int
    apartment: int
    employee_ssn: Optional[VC]
