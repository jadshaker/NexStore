from src.controller.routers.views._base_router import BaseRouter
from src.db.dependencies import get_product_revenue_dao
from src.db.models import DepartmentEmployees

product_revenue_class = BaseRouter[DepartmentEmployees](
    prefix="/product_revenue",
    tags=["Product Revenue"],
    name="Product Revenue",
    model=DepartmentEmployees,
    get_dao=get_product_revenue_dao,
)

product_revenue_router = product_revenue_class.build_router()
