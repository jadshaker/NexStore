from pydantic import NonNegativeFloat

from src.common.utils.types import VC, Text
from src.db.models import BaseModel


class Product(BaseModel):
    sku: VC
    name: VC
    price: NonNegativeFloat
    description: Text
    weight: NonNegativeFloat
    brand: VC
    width: NonNegativeFloat
    height: NonNegativeFloat
    length: NonNegativeFloat
    category_name: VC
    supplier_website: Text
