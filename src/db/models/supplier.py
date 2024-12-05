from pydantic import EmailStr

from src.common.utils.types import VC, PhoneNumber
from src.db.models import BaseModel


class Supplier(BaseModel):
    website: VC
    supplier_name: VC
    contact_person_email: EmailStr
    contact_person_first_name: VC
    contact_person_last_name: VC
    contact_person_phone_number: PhoneNumber
