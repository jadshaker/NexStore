from src.controller.routers.views._base_router import BaseRouter
from src.db.dependencies import get_department_employees_dao
from src.db.models import DepartmentEmployees

department_employees_class = BaseRouter[DepartmentEmployees](
    prefix="/department_employees",
    tags=["Department Employees"],
    name="Department Employees",
    model=DepartmentEmployees,
    get_dao=get_department_employees_dao,
)

department_employees_router = department_employees_class.build_router()
