from typing import Annotated

from pydantic.functional_validators import BeforeValidator


def validate_phone_number(value: str) -> str:
    if len(value) > 25:
        raise ValueError("Phone number is too long")
    return value


PhoneNumber = Annotated[str, BeforeValidator(validate_phone_number)]
