from datetime import datetime
from typing import Optional

from pydantic import EmailStr, NonNegativeInt

from src.common.utils.types import VC, PhoneNumber
from src.db.models import BaseModel


class Customer(BaseModel):
    phone_number: PhoneNumber
    email: EmailStr
    first_name: VC
    last_name: VC
    gender: Optional[VC]
    registration_date: datetime
    password_hashed: VC
    date_of_birth: datetime
    country: VC
    state: VC
    city: VC
    street: VC
    building: NonNegativeInt
    apartment: NonNegativeInt
