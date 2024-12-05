from src.common.utils.types import ID, VC, PhoneNumber, Text  # noqa: F401


class ValidItems:
    ID: "ID" = "111111111"
    PhoneNumber: "PhoneNumber" = "+9611234567"
    Text: "Text" = "text"
    VC: "VC" = "vc"
    int: "int" = 0


class ValidData:
    class Branch:
        phone_number: PhoneNumber = ValidItems.PhoneNumber
        name: VC = ValidItems.VC
        country: VC = ValidItems.VC
        state: VC = ValidItems.VC
        city: VC = ValidItems.VC
        street: VC = ValidItems.VC
        building: int = ValidItems.int
        apartment: int = ValidItems.int
        employee_ssn: VC = ValidItems.VC
