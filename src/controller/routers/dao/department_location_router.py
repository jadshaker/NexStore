from src.controller.routers.dao._base_router import BaseRouter
from src.db.dependencies import get_department_location_dao
from src.db.models import DepartmentLocation

department_location_class = BaseRouter[DepartmentLocation](
    prefix="/department_location",
    tags=["Department Location"],
    name="Department Location",
    model=DepartmentLocation,
    get_dao=get_department_location_dao,
)

department_location_router = department_location_class.build_router()
