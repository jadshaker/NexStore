from typing import Annotated

from pydantic.functional_validators import BeforeValidator


def validate_text(value: str) -> str:
    if len(value) > 255:
        raise ValueError("Text is too long")
    return value


Text = Annotated[str, BeforeValidator(validate_text)]
