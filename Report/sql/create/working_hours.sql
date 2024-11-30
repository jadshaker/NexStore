CREATE TABLE
  IF NOT EXISTS Working_Hours (
    Branch_phone_number PHONE_NUMBER NOT NULL,
    Day VC NOT NULL,
    Opening_hour TIME,
    Closing_hour TIME,
    CONSTRAINT PK_Working_hours PRIMARY KEY (Branch_phone_number, Day),
    CONSTRAINT Working_hours_FK_Branch_phone_number FOREIGN KEY (Branch_phone_number) REFERENCES Branch (phone_number) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT Working_hours_CK_Day CHECK (Day IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')),
    CONSTRAINT Working_hours_CK_Opening_Closing_hour CHECK (
      (
        Opening_hour IS NOT NULL
        AND Closing_hour IS NOT NULL
      )
      OR (
        Opening_hour IS NULL
        AND Closing_hour IS NULL
      )
    )
  );