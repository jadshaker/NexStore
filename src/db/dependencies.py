from fastapi import Depends
from supabase import Client

from src.db.base import get_client
from src.db.dao import BranchDAO


def get_branch_dao(client: Client = Depends(get_client)) -> BranchDAO:
    return BranchDAO(client)
