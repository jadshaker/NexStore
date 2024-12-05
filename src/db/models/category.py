from typing import Optional

from src.common.utils.types import VC, Text
from src.db.models import BaseModel


class Category(BaseModel):
    name: VC
    description: Text
    parent_category_name: Optional[VC]
