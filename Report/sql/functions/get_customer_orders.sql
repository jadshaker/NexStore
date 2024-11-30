CREATE OR REPLACE FUNCTION Get_Customer_Orders(Customer_phone_number VARCHAR)
RETURNS INT AS $$
DECLARE
    Total_Orders INT;
BEGIN
    SELECT COUNT(Order_id) INTO Total_Orders
    FROM Orders
    WHERE Orders.Customer_phone_number = Get_Customer_Orders.Customer_phone_number;
    RETURN Total_Orders;
END;
$$ LANGUAGE plpgsql;

SELECT Get_Customer_Orders('+96134567890');