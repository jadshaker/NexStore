CREATE TABLE
  IF NOT EXISTS Category (
    Name VC NOT NULL,
    Description TEXT NOT NULL,
    Parent_Category_Name VC,
    CONSTRAINT PK_Category PRIMARY KEY (Name),
    CONSTRAINT Category_FK_Category FOREIGN KEY (Parent_Category_Name) REFERENCES Category (Name) ON UPDATE CASCADE ON DELETE SET NULL
  );