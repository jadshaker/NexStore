from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_category_dao
from src.db.models import Category

category_class = BaseRouter[Category](
    prefix="/category",
    tags=["Category"],
    name="Category",
    model=Category,
    get_dao=get_category_dao,
)

category_router = category_class.build_router()
