CREATE TABLE
  IF NOT EXISTS Branch (
    Phone_number PHONE_NUMBER NOT NULL,
    Name VC NOT NULL,
    Country VC NOT NULL,
    State VC NOT NULL,
    City VC NOT NULL,
    Street VC NOT NULL,
    Building INT NOT NULL,
    Apartment INT NOT NULL,
    Employee_SSN VC,
    CONSTRAINT PK_Branch PRIMARY KEY (Phone_number),
    CONSTRAINT Branch_CK_Apartment CHECK (Apartment >= 0),
    CONSTRAINT Branch_CK_Building CHECK (Building >= 0),
    CONSTRAINT Branch_UK_LOCATION UNIQUE (Country, State, City, Street, Building, Apartment),
    CONSTRAINT Branch_UK_EMPLOYEE UNIQUE (Employee_SSN)
  );
