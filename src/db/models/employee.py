from typing import Optional

from pydantic import EmailStr, NonNegativeInt

from src.common.utils.types import VC, DateStr, PhoneNumber
from src.db.models import BaseModel


class Employee(BaseModel):
    ssn: VC
    position: VC
    salary: NonNegativeInt
    hire_date: DateStr
    gender: VC
    date_of_birth: DateStr
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
    supervisor_ssn: Optional[VC]
    department_name: VC
