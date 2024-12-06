from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_driver_dao
from src.db.models import Driver

driver_class = BaseRouter[Driver](
    prefix="/driver",
    tags=["Driver"],
    name="Driver",
    model=Driver,
    get_dao=get_driver_dao,
)

driver_router = driver_class.build_router()
