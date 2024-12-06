from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_coupon_dao
from src.db.models import Coupon

coupon_class = BaseRouter[Coupon](
    prefix="/coupon",
    tags=["Coupon"],
    name="Coupon",
    model=Coupon,
    get_dao=get_coupon_dao,
)

coupon_router = coupon_class.build_router()
