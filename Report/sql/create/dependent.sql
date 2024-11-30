CREATE TABLE
  IF NOT EXISTS Dependent (
    Employee_SSN VC NOT NULL,
    Name VC NOT NULL,
    Gender VARCHAR(6) NOT NULL,
    Date_of_birth DATE NOT NULL,
    Relationship VC NOT NULL,
    CONSTRAINT PK_DEPENDENT PRIMARY KEY (Employee_SSN, Name),
    CONSTRAINT Dependent_FK_Employee_SSN FOREIGN KEY (Employee_SSN) REFERENCES Employee (SSN) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Dependent_CK_Gender CHECK (Gender IN ('Male', 'Female')),
    CONSTRAINT Dependent_CK_Date_of_birth CHECK (Date_of_birth < CURRENT_DATE)
  );