from typing import Annotated

from pydantic.functional_validators import BeforeValidator


def validate_id(value: str) -> str:
    if len(value) != 10:
        raise ValueError("ID must be 10 characters long")
    return value


ID = Annotated[str, BeforeValidator(validate_id)]
