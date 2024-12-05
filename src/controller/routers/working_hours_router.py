from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_working_hours_dao
from src.db.models import WorkingHours

working_hours_class = BaseRouter[WorkingHours](
    prefix="/working_hours",
    tags=["Working Hours"],
    name="Working Hours",
    model=WorkingHours,
    get_dao=get_working_hours_dao,
)
working_hours_router = working_hours_class.build_router()
