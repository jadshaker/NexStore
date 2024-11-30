SELECT
  Product.SKU,
  Product.Name,
  SUM(Purchased.Quantity) AS Total_Sold,
  Product.Price * SUM(Purchased.Quantity) AS Total_Revenue,
  COUNT(DISTINCT Purchased.Order_id) AS Total_Orders
FROM
  Product
  LEFT JOIN Purchased ON Product.SKU = Purchased.Product_SKU
GROUP BY
  Product.SKU,
  Product.Name,
  Product.Price
HAVING
  SUM(Purchased.Quantity) < 10
  OR Product.Price * SUM(Purchased.Quantity) < 500;