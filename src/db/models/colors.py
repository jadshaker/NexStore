from src.common.utils.types import VC
from src.db.models import BaseModel


class Colors(BaseModel):
    product_sku: VC
    product_color: VC
