from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_purchased_dao
from src.db.models import Purchased

purchased_class = BaseRouter[Purchased](
    prefix="/purchased",
    tags=["Purchased"],
    name="Purchased",
    model=Purchased,
    get_dao=get_purchased_dao,
)

purchased_router = purchased_class.build_router()
