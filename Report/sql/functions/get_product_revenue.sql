DROP FUNCTION get_product_revenue(integer);

CREATE OR REPLACE FUNCTION Get_Product_Revenue(Product_SK VC)
RETURNS NUMERIC AS $$
DECLARE
    Total_Revenue NUMERIC;
BEGIN
    SELECT SUM(Amount) INTO Total_Revenue
    FROM Purchased
    WHERE Purchased.Product_SKU = Product_SK;
    RETURN Total_Revenue;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM Get_Product_Revenue('1001');