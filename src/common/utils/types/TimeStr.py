import time
from typing import Annotated

from pydantic.functional_validators import BeforeValidator


def validate_time_str(value: str) -> str:
    if len(value) != 8:
        raise ValueError("Time must be 8 characters long")
    try:
        time.strptime(value, "%H:%M:%S")
    except ValueError:
        raise ValueError("Time must be in the format HH:MM:SS")
    return value


TimeStr = Annotated[str, BeforeValidator(validate_time_str)]
