from fastapi.routing import APIRouter

from .customer_orders import customer_orders_router
from .department_employees import department_employees_router
from .product_revenue import product_revenue_router

view_router = APIRouter(prefix="/views")

view_router.include_router(customer_orders_router)
view_router.include_router(department_employees_router)
view_router.include_router(product_revenue_router)

__all__ = ["view_router"]
