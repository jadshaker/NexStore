from src.common.utils.types import ID, VC, PhoneNumber, Text
from src.db.models import BaseModel


class SupportTicket(BaseModel):
    ticket_id: ID
    description: Text
    subject: Text
    status: VC
    priority: VC
    employee_ssn: VC
    customer_phone_number: PhoneNumber
