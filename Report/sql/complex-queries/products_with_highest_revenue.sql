SELECT
  Product.Name AS Product_Name,
  SUM(Purchased.Quantity) AS Total_Quantity_Sold,
  SUM(Purchased.Amount) AS Total_Revenue_Generated
FROM
  Product,
  Purchased
WHERE
  Product.SKU = Purchased.Product_SKU
GROUP BY
  Product.Name
ORDER BY
  Total_Revenue_Generated DESC
FETCH FIRST
  5 ROWS ONLY;