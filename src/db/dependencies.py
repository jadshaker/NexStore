from fastapi import Depends
from supabase import Client

from src.db.base import get_client
from src.db.dao import (
    BranchDAO,
    CategoryDAO,
    ColorsDAO,
    CouponDAO,
    CustomerDAO,
    DepartmentDAO,
    DepartmentLocationDAO,
    DependentDAO,
    DriverDAO,
    EmployeeDAO,
    LocatedInDAO,
    OrdersDAO,
    ProductDAO,
    ProductImageUrlsDAO,
    PurchasedDAO,
    ReviewImageUrlsDAO,
    ReviewsDAO,
    SupplierDAO,
    SupportTicketDAO,
    WishlistDAO,
    WorkingHoursDAO,
)

from src.db.views import CustomerOrdersDAO
from src.db.views import DepartmentEmployeesDAO
from src.db.views import ProductRevenueDAO


def get_branch_dao(client: Client = Depends(get_client)) -> BranchDAO:
    return BranchDAO(client)


def get_category_dao(client: Client = Depends(get_client)) -> CategoryDAO:
    return CategoryDAO(client)


def get_colors_dao(client: Client = Depends(get_client)) -> ColorsDAO:
    return ColorsDAO(client)


def get_coupon_dao(client: Client = Depends(get_client)) -> CouponDAO:
    return CouponDAO(client)


def get_customer_dao(client: Client = Depends(get_client)) -> CustomerDAO:
    return CustomerDAO(client)


def get_department_dao(client: Client = Depends(get_client)) -> DepartmentDAO:
    return DepartmentDAO(client)


def get_department_location_dao(
    client: Client = Depends(get_client),
) -> DepartmentLocationDAO:
    return DepartmentLocationDAO(client)


def get_dependent_dao(client: Client = Depends(get_client)) -> DependentDAO:
    return DependentDAO(client)


def get_driver_dao(client: Client = Depends(get_client)) -> DriverDAO:
    return DriverDAO(client)


def get_employee_dao(client: Client = Depends(get_client)) -> EmployeeDAO:
    return EmployeeDAO(client)


def get_located_in_dao(client: Client = Depends(get_client)) -> LocatedInDAO:
    return LocatedInDAO(client)


def get_orders_dao(client: Client = Depends(get_client)) -> OrdersDAO:
    return OrdersDAO(client)


def get_product_dao(client: Client = Depends(get_client)) -> ProductDAO:
    return ProductDAO(client)


def get_product_image_urls_dao(
    client: Client = Depends(get_client),
) -> ProductImageUrlsDAO:
    return ProductImageUrlsDAO(client)


def get_purchased_dao(client: Client = Depends(get_client)) -> PurchasedDAO:
    return PurchasedDAO(client)


def get_review_image_urls_dao(
    client: Client = Depends(get_client),
) -> ReviewImageUrlsDAO:
    return ReviewImageUrlsDAO(client)


def get_reviews_dao(client: Client = Depends(get_client)) -> ReviewsDAO:
    return ReviewsDAO(client)


def get_supplier_dao(client: Client = Depends(get_client)) -> SupplierDAO:
    return SupplierDAO(client)


def get_support_ticket_dao(client: Client = Depends(get_client)) -> SupportTicketDAO:
    return SupportTicketDAO(client)


def get_wishlist_dao(client: Client = Depends(get_client)) -> WishlistDAO:
    return WishlistDAO(client)


def get_working_hours_dao(client: Client = Depends(get_client)) -> WorkingHoursDAO:
    return WorkingHoursDAO(client)


def get_customer_orders_dao(client: Client = Depends(get_client)) -> CustomerOrdersDAO:
    return CustomerOrdersDAO(client)

def get_department_employees_dao(client: Client = Depends(get_client)) -> DepartmentEmployeesDAO:
    return DepartmentEmployeesDAO(client)

def get_product_revenue_dao(client: Client = Depends(get_client)) -> ProductRevenueDAO:
    return ProductRevenueDAO(client)