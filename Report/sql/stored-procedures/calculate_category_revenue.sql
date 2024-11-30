CREATE OR REPLACE PROCEDURE Calculate_Category_Revenue(Category_name VARCHAR)
AS $$
DECLARE
    Total_Revenue NUMERIC;
BEGIN
    SELECT SUM(Purchased.Amount) INTO Total_Revenue
    FROM Purchased
    JOIN Product ON Purchased.Product_SKU = Product.SKU
    WHERE Product.Category_name = Calculate_Category_Revenue.Category_name;
    RAISE NOTICE 'Total revenue generated by category %: %', Category_name, Total_Revenue;
END;
$$ LANGUAGE plpgsql;

CALL Calculate_Category_Revenue('Electronics');