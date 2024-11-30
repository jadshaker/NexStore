CREATE TABLE
  IF NOT EXISTS Colors (
    Product_SKU VC NOT NULL,
    Product_color VC NOT NULL,
    CONSTRAINT PK_Colors PRIMARY KEY (Product_SKU, Product_color),
    CONSTRAINT Colors_FK_Product FOREIGN KEY (Product_SKU) REFERENCES Product (SKU) ON UPDATE CASCADE ON DELETE CASCADE
  );