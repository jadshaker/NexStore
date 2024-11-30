CREATE TABLE
  IF NOT EXISTS Review_Image_URLs (
    Product_SKU VC NOT NULL,
    Customer_phone_number PHONE_NUMBER NOT NULL,
    Product_Image_URL VC NOT NULL,
    CONSTRAINT PK_Review_IMAGE_URLS PRIMARY KEY (Product_SKU, Product_Image_URL),
    CONSTRAINT Review_Image_URLs_FK_Product_Sku FOREIGN KEY (Product_SKU) REFERENCES Product (SKU) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Review_Image_URLs_FK_Customer_phone_number FOREIGN KEY (Customer_phone_number) REFERENCES Customer (Phone_number) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Review_Image_URLs_UK_CUSTOMER_PHONE_NUMBER UNIQUE (Customer_phone_number)
  );