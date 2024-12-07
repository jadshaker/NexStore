from src.controller.routers.dao._base_router import BaseRouter
from src.db.dependencies import get_supplier_dao
from src.db.models import Supplier

supplier_class = BaseRouter[Supplier](
    prefix="/supplier",
    tags=["Supplier"],
    name="Supplier",
    model=Supplier,
    get_dao=get_supplier_dao,
)

supplier_router = supplier_class.build_router()
