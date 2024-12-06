from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_employee_dao
from src.db.models import Employee

employee_class = BaseRouter[Employee](
    prefix="/employee",
    tags=["Employee"],
    name="Employee",
    model=Employee,
    get_dao=get_employee_dao,
)

employee_router = employee_class.build_router()
