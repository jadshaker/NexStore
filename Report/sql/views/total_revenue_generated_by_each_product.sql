CREATE VIEW
  Product_Revenue AS
SELECT
  Product.SKU,
  Product.Name,
  SUM(Purchased.Amount) AS Total_Revenue
FROM
  Product
  JOIN Purchased ON Product.SKU = Purchased.Product_SKU
GROUP BY
  Product.SKU,
  Product.Name;

SELECT * FROM Product_Revenue;