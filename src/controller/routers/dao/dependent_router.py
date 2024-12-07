from src.controller.routers.dao._base_router import BaseRouter
from src.db.dependencies import get_dependent_dao
from src.db.models import Dependent

dependent_class = BaseRouter[Dependent](
    prefix="/dependent",
    tags=["Dependent"],
    name="Dependent",
    model=Dependent,
    get_dao=get_dependent_dao,
)

dependent_router = dependent_class.build_router()
