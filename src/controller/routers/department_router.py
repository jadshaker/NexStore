from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_department_dao
from src.db.models import Department

department_class = BaseRouter[Department](
    prefix="/department",
    tags=["Department"],
    name="Department",
    model=Department,
    get_dao=get_department_dao,
)

department_router = department_class.build_router()
