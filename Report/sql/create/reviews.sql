CREATE TABLE
  IF NOT EXISTS Reviews (
    Product_SKU VC NOT NULL,
    Customer_phone_number PHONE_NUMBER NOT NULL,
    Review_date DATE NOT NULL,
    Rating INT NOT NULL,
    Comment TEXT,
    Description TEXT,
    CONSTRAINT PK_Reviews PRIMARY KEY (Product_SKU, Customer_phone_number),
    CONSTRAINT Reviews_FK_Product_SKU FOREIGN KEY (Product_SKU) REFERENCES Product (SKU) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Reviews_FK_Customer_phone_number FOREIGN KEY (Customer_phone_number) REFERENCES Customer (Phone_number) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Reviews_CK_Rating CHECK (
      Rating >= 1
      AND Rating <= 5
    ),
    CONSTRAINT Reviews_CK_Comment CHECK (Review_date <= CURRENT_DATE)
  );