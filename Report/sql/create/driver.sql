CREATE TABLE
  IF NOT EXISTS Driver (
    License_number VC NOT NULL,
    Driving_experience_years INT NOT NULL,
    License_expiry_date DATE NOT NULL,
    Employee_SSN VC NOT NULL,
    CONSTRAINT PK_DRIVER PRIMARY KEY (License_number),
    CONSTRAINT Driver_FK_Employee_SSN FOREIGN KEY (Employee_SSN) REFERENCES Employee (SSN) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Driver_CK_Driving_experience_years CHECK (Driving_experience_years > 0),
    CONSTRAINT Driver_CK_License_expiry_date CHECK (License_expiry_date > CURRENT_DATE)
  );