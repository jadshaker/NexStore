from src.common.utils.types import VC, DateStr
from src.db.models import BaseModel


class Dependent(BaseModel):
    employee_ssn: VC
    name: VC
    gender: VC
    date_of_birth: DateStr
    relationship: VC
