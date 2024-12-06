from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_support_ticket_dao
from src.db.models import SupportTicket

support_ticket_class = BaseRouter[SupportTicket](
    prefix="/support_ticket",
    tags=["Support Ticket"],
    name="Support Ticket",
    model=SupportTicket,
    get_dao=get_support_ticket_dao,
)

support_ticket_router = support_ticket_class.build_router()
