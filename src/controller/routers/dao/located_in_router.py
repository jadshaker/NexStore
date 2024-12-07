from src.controller.routers.dao._base_router import BaseRouter
from src.db.dependencies import get_located_in_dao
from src.db.models import LocatedIn

located_in_class = BaseRouter[LocatedIn](
    prefix="/located_in",
    tags=["Located In"],
    name="Located In",
    model=LocatedIn,
    get_dao=get_located_in_dao,
)

located_in_router = located_in_class.build_router()
