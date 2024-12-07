from src.controller.routers.dao._base_router import BaseRouter
from src.db.dependencies import get_customer_dao
from src.db.models import Customer

customer_class = BaseRouter[Customer](
    prefix="/customer",
    tags=["Customer"],
    name="Customer",
    model=Customer,
    get_dao=get_customer_dao,
)

customer_router = customer_class.build_router()
