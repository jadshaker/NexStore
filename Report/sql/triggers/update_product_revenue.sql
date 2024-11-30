CREATE OR REPLACE FUNCTION Update_Product_Revenue()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Product_Revenue
    SET Total_Revenue = Total_Revenue + NEW.Amount
    WHERE SKU = NEW.Product_SKU;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Update_Product_Revenue
AFTER INSERT ON Purchased
FOR EACH ROW
EXECUTE FUNCTION Update_Product_Revenue();