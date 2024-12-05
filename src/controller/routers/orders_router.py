from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_orders_dao
from src.db.models import Orders

orders_class = BaseRouter[Orders](
    prefix="/orders",
    tags=["Orders"],
    name="Orders",
    model=Orders,
    get_dao=get_orders_dao,
)
orders_router = orders_class.build_router()
