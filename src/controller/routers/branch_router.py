from src.controller.routers._base_router import BaseRouter
from src.db.dependencies import get_branch_dao
from src.db.models import Branch

branch_router_class = BaseRouter[Branch](
    prefix="/branch",
    tags=["Branch"],
    name="Branch",
    model=Branch,
    get_dao=get_branch_dao,
)

branch_router = branch_router_class.build_router()
