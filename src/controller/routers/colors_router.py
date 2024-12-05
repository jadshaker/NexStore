from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_colors_dao
from src.db.models import Colors

colors_class = BaseRouter[Colors](
    prefix="/colors",
    tags=["Colors"],
    name="Colors",
    model=Colors,
    get_dao=get_colors_dao,
)
colors_router = colors_class.build_router()
