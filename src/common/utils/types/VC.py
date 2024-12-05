from typing import Annotated

from pydantic.functional_validators import BeforeValidator


def validate_vc(value: str) -> str:
    if len(value) > 50:
        raise ValueError("VC is too long")
    return value


VC = Annotated[str, BeforeValidator(validate_vc)]
