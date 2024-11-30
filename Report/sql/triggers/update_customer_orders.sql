CREATE OR REPLACE FUNCTION Update_Customer_Orders()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Customer_Orders
    SET Total_Orders = Total_Orders + 1
    WHERE Phone_number = NEW.Customer_phone_number;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Update_Customer_Orders
AFTER INSERT ON Orders
FOR EACH ROW
EXECUTE FUNCTION Update_Customer_Orders();