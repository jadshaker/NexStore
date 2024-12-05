from datetime import datetime
from typing import Optional

from pydantic import EmailStr, NonNegativeInt

from src.common.utils.types import VC, PhoneNumber
from src.db.models import BaseModel


class Employee(BaseModel):
    SSN: VC
    position: VC
    salary: NonNegativeInt
    hire_date: datetime
    gender: VC
    date_of_birth: datetime
    email: EmailStr
    first_name: VC
    last_name: VC
    phone_number: PhoneNumber
    country: VC
    state: VC
    city: VC
    street: VC
    building: NonNegativeInt
    apartment: NonNegativeInt
    branch_phone_number: PhoneNumber
    supervisor_SSN: Optional[VC]
    department_name: VC
