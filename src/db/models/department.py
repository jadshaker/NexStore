from typing import Optional

from pydantic import NonNegativeInt

from src.common.utils.types import VC, DateStr
from src.db.models import BaseModel


class Department(BaseModel):
    name: VC
    number_of_employees: NonNegativeInt
    employee_ssn: Optional[VC]
    manager_start_date: DateStr
