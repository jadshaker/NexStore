CREATE TABLE
  IF NOT EXISTS Coupon (
    Code ID NOT NULL,
    Description TEXT NOT NULL,
    Discount_percent REAL NOT NULL,
    Times_used INT NOT NULL,
    Minimum_order_amount REAL NOT NULL,
    Maximum_order_amount REAL NOT NULL,
    Usage_limit INT NOT NULL,
    Valid_from DATE NOT NULL,
    Valid_to DATE NOT NULL,
    Order_ID ID NOT NULL,
    Discount_amount REAL NOT NULL,
    Redeem_date DATE NOT NULL,
    CONSTRAINT PK_Coupon PRIMARY KEY (Code),
    CONSTRAINT Coupon_FK_Order FOREIGN KEY (Order_ID) REFERENCES Orders (Order_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Coupon_CK_Percent CHECK (
      Discount_percent > 0
      AND Discount_percent <= 100
    ),
    CONSTRAINT Coupon_CK_Limit CHECK (Usage_limit > 0),
    CONSTRAINT Coupon_CK_Valid CHECK (Valid_from <= Valid_to),
    CONSTRAINT Coupon_CK_Amount CHECK (Discount_amount >= 0),
    CONSTRAINT Coupon_CK_Times_used CHECK (Times_used >= 0),
    CONSTRAINT Coupon_CK_Order_amount CHECK (
      Minimum_order_amount > 0
      AND Maximum_order_amount > 0
      AND Minimum_order_amount <= Maximum_order_amount
    ),
    CONSTRAINT Coupon_CK_Redeem_date CHECK (Redeem_date <= CURRENT_DATE),
    CONSTRAINT Coupon_UK_ORDER UNIQUE (Order_ID)
  );