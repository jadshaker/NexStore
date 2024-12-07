from src.controller.routers.dao._base_router import BaseRouter
from src.db.dependencies import get_reviews_dao
from src.db.models import Reviews

reviews_class = BaseRouter[Reviews](
    prefix="/reviews",
    tags=["Reviews"],
    name="Reviews",
    model=Reviews,
    get_dao=get_reviews_dao,
)

reviews_router = reviews_class.build_router()
