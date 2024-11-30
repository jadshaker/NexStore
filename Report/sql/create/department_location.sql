CREATE TABLE
  IF NOT EXISTS Department_Location (
    Department_name VC NOT NULL,
    Location VC NOT NULL,
    CONSTRAINT PK_Department_Location PRIMARY KEY (Department_name, Location),
    CONSTRAINT Department_Location_FK_Department FOREIGN KEY (Department_name) REFERENCES Department (Name) ON UPDATE CASCADE ON DELETE CASCADE
  );