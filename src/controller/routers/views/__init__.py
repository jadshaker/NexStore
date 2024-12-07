from fastapi.routing import APIRouter

from .customer_orders import customer_orders_router

view_router = APIRouter(prefix="/views")

view_router.include_router(customer_orders_router)

__all__ = ["view_router"]
