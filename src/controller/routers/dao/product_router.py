from src.controller.routers.dao._base_router import BaseRouter
from src.db.dependencies import get_product_dao
from src.db.models import Product

product_class = BaseRouter[Product](
    prefix="/product",
    tags=["Product"],
    name="Product",
    model=Product,
    get_dao=get_product_dao,
)

product_router = product_class.build_router()
