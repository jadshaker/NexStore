CREATE TABLE
  IF NOT EXISTS Support_Ticket (
    Ticket_id ID NOT NULL,
    Description TEXT NOT NULL,
    Subject TEXT NOT NULL,
    Status VARCHAR(8) NOT NULL,
    Priority VARCHAR(6) NOT NULL,
    Employee_SSN VC NOT NULL,
    Customer_phone_number VC NOT NULL,
    CONSTRAINT PK_Support_Ticket PRIMARY KEY (Ticket_id),
    CONSTRAINT Support_Ticket_CK_STATUS CHECK (Status IN ('Open', 'Closed', 'Resolved')),
    CONSTRAINT Support_Ticket_CK_PRIORITY CHECK (Priority IN ('High', 'Medium', 'Low')),
    CONSTRAINT Support_Ticket_FK_Employee_SSN FOREIGN KEY (Employee_SSN) REFERENCES Employee (SSN) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Support_Ticket_FK_Customer_phone_number FOREIGN KEY (Customer_phone_number) REFERENCES Customer (Phone_number) ON UPDATE CASCADE ON DELETE CASCADE
  );