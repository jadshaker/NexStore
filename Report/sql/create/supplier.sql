CREATE TABLE
  IF NOT EXISTS Supplier (
    Website VC NOT NULL,
    Supplier_name VC NOT NULL,
    Contact_person_email VC NOT NULL,
    Contact_person_first_name VC NOT NULL,
    Contact_person_last_name VC NOT NULL,
    Contact_person_phone_number PHONE_NUMBER NOT NULL,
    CONSTRAINT PK_Supplier PRIMARY KEY (Website),
    CONSTRAINT Supplier_CK_Contact_person_email CHECK (Contact_person_email LIKE '%@%.%'),
    CONSTRAINT Supplier_UK_Supplier_name UNIQUE (Supplier_name),
    CONSTRAINT Supplier_UK_Contact_person_phone_number UNIQUE (Contact_person_phone_number),
    CONSTRAINT Supplier_UK_Contact_person_email UNIQUE (Contact_person_email)
  );