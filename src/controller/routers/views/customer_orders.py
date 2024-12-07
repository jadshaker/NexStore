from src.controller.routers.views._base_router import BaseRouter
from src.db.dependencies import get_customer_orders_dao
from src.db.models import CustomerOrders

customer_orders_class = BaseRouter[CustomerOrders](
    prefix="/customer_orders",
    tags=["Customer Orders"],
    name="Customer Orders",
    model=CustomerOrders,
    get_dao=get_customer_orders_dao,
)

customer_orders_router = customer_orders_class.build_router()
