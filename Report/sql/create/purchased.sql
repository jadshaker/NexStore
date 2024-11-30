CREATE TABLE
  IF NOT EXISTS Purchased (
    Product_SKU VC NOT NULL,
    Order_id ID NOT NULL,
    Quantity INT NOT NULL,
    Amount DECIMAL NOT NULL,
    CONSTRAINT PK_Purchased PRIMARY KEY (Product_SKU, Order_id),
    CONSTRAINT Purchased_FK_Product_SKU FOREIGN KEY (Product_SKU) REFERENCES Product (SKU) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Purchased_FK_Order_id FOREIGN KEY (Order_id) REFERENCES Orders (Order_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Purchased_CK_Amount CHECK (Amount >= 0),
    CONSTRAINT Purchased_CK_Quantity CHECK (Quantity >= 0)
  );