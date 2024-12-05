from pydantic import NonNegativeInt

from src.common.utils.types import VC, DateStr
from src.db.models import BaseModel


class Driver(BaseModel):
    license_number: VC
    driving_experience_years: NonNegativeInt
    license_expiry_date: DateStr
    employee_ssn: VC
