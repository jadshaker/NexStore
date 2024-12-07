from enum import Enum
from typing import (
    Any,
    Callable,
    Generic,
    Optional,
    Type,
    TypeVar,
    Union,
    get_type_hints,
)

from fastapi import Depends, Query, status
from fastapi.routing import APIRouter
from pydantic import BaseModel as PydanticBaseModel
from pydantic import create_model

from src.common.responses import APIResponse
from src.controller.schemas._base_schemas import BaseResponse
from src.db.views import BaseView
from src.db.models import BaseModel

BaseModelType = TypeVar("BaseModelType", bound=BaseModel)


class BaseRouter(Generic[BaseModelType]):
    def __init__(
        self,
        prefix: str,
        tags: Optional[list[Union[str, Enum]]],
        name: str,
        model: Type[BaseModelType],
        get_dao: Callable[[], BaseView[BaseModelType]],
    ):
        self.name = name
        self.request = {
            field: field for field in model.model_fields.keys() if field != "id"
        }
        self.request_many = [self.request]
        fields: dict[str, type] = dict(get_type_hints(model))
        queries: dict[str, Any] = {
            key: (Optional[fields[key]], Query(None)) for key in fields if key != "id"
        }
        self.query = create_model("DynamicModel", **queries, __base__=BaseModel)
        self.get_dao = get_dao
        self.router = APIRouter(
            prefix=prefix,
            tags=tags,
        )

    async def get_by_query(
        self, query: PydanticBaseModel, dao: BaseView[BaseModelType]
    ) -> APIResponse:
        try:
            items = dao.get_by_query(**query.model_dump())
            if items:
                return APIResponse(
                    status_code=status.HTTP_200_OK,
                    message=f"{self.name}s found",
                    data=BaseResponse[BaseModelType](items=items).model_dump(),
                )
            return APIResponse(
                status_code=status.HTTP_404_NOT_FOUND,
                message=f"{self.name}s not found",
            )
        except Exception as e:
            return APIResponse(
                status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
                message=str(e),
            )

    def build_router(self) -> APIRouter:
        @self.router.get("/")
        async def get_by_query(
            query: PydanticBaseModel = Depends(self.query),
            dao: BaseView[BaseModelType] = Depends(self.get_dao),
        ) -> APIResponse:
            return await self.get_by_query(query, dao)

        return self.router
