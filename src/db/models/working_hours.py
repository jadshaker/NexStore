from datetime import time

from src.common.utils.types import VC, PhoneNumber
from src.db.models import BaseModel


class WorkingHours(BaseModel):
    branch_phone_number: PhoneNumber
    day: VC
    opening_hour: time
    closing_hour: time
