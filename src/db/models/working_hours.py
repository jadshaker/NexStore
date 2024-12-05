from typing import Optional

from src.common.utils.types import VC, PhoneNumber, TimeStr
from src.db.models import BaseModel


class WorkingHours(BaseModel):
    branch_phone_number: PhoneNumber
    day: VC
    opening_hour: Optional[TimeStr]
    closing_hour: Optional[TimeStr]
