from src.common.utils.types import VC
from src.db.models import BaseModel


class DepartmentLocation(BaseModel):
    department_name: VC
    location: VC
