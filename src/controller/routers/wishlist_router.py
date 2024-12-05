from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_wishlist_dao
from src.db.models import Wishlist

wishlist_class = BaseRouter[Wishlist](
    prefix="/wishlist",
    tags=["Wishlist"],
    name="Wishlist",
    model=Wishlist,
    get_dao=get_wishlist_dao,
)
wishlist_router = wishlist_class.build_router()
