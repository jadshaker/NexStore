from datetime import datetime

from pydantic import NonNegativeInt

from src.common.utils.types import VC
from src.db.models import BaseModel


class Driver(BaseModel):
    #     License_number VC NOT NULL,
    # Driving_experience_years INT NOT NULL,
    # License_expiry_date DATE NOT NULL,
    # Employee_SSN VC NOT NULL,
    license_number: VC
    driving_experience_years: NonNegativeInt
    license_expiry_date: datetime
    employee_ssn: VC
