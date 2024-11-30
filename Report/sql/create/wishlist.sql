CREATE TABLE
  IF NOT EXISTS Wishlist (
    Product_SKU VC NOT NULL,
    Customer_phone_number PHONE_NUMBER NOT NULL,
    Total_amount REAL NOT NULL,
    CONSTRAINT PK_Wishlist PRIMARY KEY (Product_SKU, Customer_phone_number),
    CONSTRAINT Wishlist_FK_Product_SKU FOREIGN KEY (Product_SKU) REFERENCES Product (SKU) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT Wishlist_FK_Customer_phone_number FOREIGN KEY (Customer_phone_number) REFERENCES Customer (Phone_number) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Wishlist_CK_Total_amount CHECK (Total_amount >= 0)
  );