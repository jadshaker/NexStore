from typing import Any, Generic, Optional, TypeVar

from supabase import Client

from src.db.models import BaseModel

BaseModelType = TypeVar("BaseModelType", bound=BaseModel)


class BaseView(Generic[BaseModelType]):
    def __init__(
        self, client: Client, table: str, base_model: type[BaseModelType]
    ) -> None:
        self.client = client
        self.table = table
        self.base_model = base_model

    def get_by_query(
        self,
        **kwargs: Any,
    ) -> list[BaseModelType]:
        query = self.client.table(self.table).select("*")
        for key, value in kwargs.items():
            if value is not None:
                query = query.eq(key, value)
        data = query.execute()
        if not data.data:
            return []
        return [self.base_model.model_validate(item) for item in data.data]
