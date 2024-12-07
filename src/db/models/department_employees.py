from typing import Optional

from pydantic import EmailStr, NonNegativeInt

from src.common.utils.types import VC, DateStr, PhoneNumber
from src.db.models import BaseModel


class DepartmentEmployees(BaseModel):
    department_name: VC
    total_employees: NonNegativeInt