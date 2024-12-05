import time
from typing import Annotated

from pydantic.functional_validators import BeforeValidator


def validate_date_str(value: str) -> str:
    if len(value) != 10:
        raise ValueError("Date must be 10 characters long")
    try:
        time.strptime(value, "%Y-%m-%d")
    except ValueError:
        raise ValueError("Incorrect data format, should be YYYY-MM-DD")
    return value


DateStr = Annotated[str, BeforeValidator(validate_date_str)]
