CREATE TABLE
  IF NOT EXISTS Product (
    SKU VC NOT NULL,
    Name VC NOT NULL,
    Price INT NOT NULL,
    Description TEXT,
    Weight INT,
    Brand VC,
    Width INT,
    Height INT,
    Length INT,
    Category_name VC,
    Supplier_website TEXT,
    CONSTRAINT PK_PRODUCT PRIMARY KEY (SKU),
    CONSTRAINT Product_FK_Category_name FOREIGN KEY (Category_name) REFERENCES Category (Name) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT Product_FK_Supplier_website FOREIGN KEY (Supplier_website) REFERENCES Supplier (Website) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT Product_CK_Price CHECK (Price > 0),
    CONSTRAINT Product_CK_Weight CHECK (Weight > 0),
    CONSTRAINT Product_CK_Height CHECK (Height > 0),
    CONSTRAINT Product_CK_Length CHECK (Length > 0),
    CONSTRAINT Product_UK_Product UNIQUE (Name, Category_name),
    CONSTRAINT Product_UK_Supplier UNIQUE (Supplier_website, SKU)
  );