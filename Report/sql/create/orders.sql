CREATE TABLE
  IF NOT EXISTS Orders (
    Order_id ID NOT NULL,
    Notes TEXT,
    Payment_method VC NOT NULL,
    Total_amount INT NOT NULL,
    Is_online BOOLEAN NOT NULL DEFAULT FALSE,
    Employee_SSN VC,
    Customer_phone_number PHONE_NUMBER NOT NULL,
    Date DATE NOT NULL,
    Driver_license_number VC,
    CONSTRAINT PK_Order PRIMARY KEY (Order_id),
    CONSTRAINT Order_FK_Employee_SSN FOREIGN KEY (Employee_SSN) REFERENCES Employee (SSN) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT Order_FK_Customer_phone_number FOREIGN KEY (Customer_phone_number) REFERENCES Customer (Phone_number) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Order_FK_Driver_license_number FOREIGN KEY (Driver_license_number) REFERENCES Driver (License_number) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT Order_CK_Is_online CHECK (Is_online IN ('0', '1')),
    CONSTRAINT Order_CK_Total_amount CHECK (Total_amount > 0),
    CONSTRAINT Order_CK_Date CHECK (Date < CURRENT_DATE),
    CONSTRAINT Order_CK_Payment_method CHECK (Payment_method IN ('Cash', 'Credit Card', 'Debit Card', 'PayPal', 'Apple Pay', 'Google Pay')),
    CONSTRAINT Order_UK_Driver_license_number UNIQUE (Driver_license_number)
  );