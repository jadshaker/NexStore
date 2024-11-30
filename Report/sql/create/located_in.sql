CREATE TABLE
  IF NOT EXISTS Located_in (
    Product_SKU VC NOT NULL,
    Branch_phone_number PHONE_NUMBER NOT NULL,
    Quantity INT NOT NULL,
    Shelf_location VC NOT NULL,
    CONSTRAINT PK_LOCATED_IN PRIMARY KEY (Product_SKU, Branch_phone_number),
    CONSTRAINT Located_in_FK_Product_SKU FOREIGN KEY (Product_SKU) REFERENCES Product (SKU) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Located_in_FK_Branch_phone_number FOREIGN KEY (Branch_phone_number) REFERENCES Branch (Phone_number) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Located_in_CK_Quantity CHECK (Quantity > 0)
  );