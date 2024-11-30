CREATE TABLE
  IF NOT EXISTS Department (
    Name VC NOT NULL,
    Number_of_employees INT NOT NULL,
    Employee_SSN VC,
    Manager_start_date DATE NOT NULL,
    CONSTRAINT PK_Department PRIMARY KEY (Name),
    CONSTRAINT Department_Department_CK_Number_of_employees CHECK (Number_of_employees > 0),
    CONSTRAINT Department_Department_CK_Manager_start_date CHECK (Manager_start_date < CURRENT_DATE),
    CONSTRAINT Department_Department_UK_Manager UNIQUE (Employee_SSN),
    CONSTRAINT Department_Department_UK_Department UNIQUE (Name)
  );