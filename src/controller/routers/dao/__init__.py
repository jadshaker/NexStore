from fastapi.routing import APIRouter

from .branch_router import branch_router
from .category_router import category_router
from .colors_router import colors_router
from .coupon_router import coupon_router
from .customer_router import customer_router
from .department_location_router import department_location_router
from .department_router import department_router
from .dependent_router import dependent_router
from .driver_router import driver_router
from .employee_router import employee_router
from .located_in_router import located_in_router
from .orders_router import orders_router
from .product_image_urls_router import product_image_urls_router
from .product_router import product_router
from .purchased_router import purchased_router
from .review_image_urls_router import review_image_urls_router
from .reviews_router import reviews_router
from .supplier_router import supplier_router
from .support_ticket_router import support_ticket_router
from .wishlist_router import wishlist_router
from .working_hours_router import working_hours_router

dao_router = APIRouter(prefix="/dao")

dao_router.include_router(branch_router)
dao_router.include_router(category_router)
dao_router.include_router(colors_router)
dao_router.include_router(coupon_router)
dao_router.include_router(customer_router)
dao_router.include_router(department_location_router)
dao_router.include_router(department_router)
dao_router.include_router(dependent_router)
dao_router.include_router(driver_router)
dao_router.include_router(employee_router)
dao_router.include_router(located_in_router)
dao_router.include_router(orders_router)
dao_router.include_router(product_image_urls_router)
dao_router.include_router(product_router)
dao_router.include_router(purchased_router)
dao_router.include_router(review_image_urls_router)
dao_router.include_router(reviews_router)
dao_router.include_router(supplier_router)
dao_router.include_router(support_ticket_router)
dao_router.include_router(wishlist_router)
dao_router.include_router(working_hours_router)

__all__ = ["dao_router"]
