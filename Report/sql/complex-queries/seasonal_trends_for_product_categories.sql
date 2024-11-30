SELECT
  EXTRACT(
    MONTH
    FROM
      Orders.Date
  ) AS Month,
  Product.Category_name,
  SUM(Purchased.Quantity) AS Total_Sold
FROM
  Orders
  JOIN Purchased ON Orders.Order_id = Purchased.Order_id
  JOIN Product ON Purchased.Product_SKU = Product.SKU
GROUP BY
  EXTRACT(
    MONTH
    FROM
      Orders.Date
  ),
  Product.Category_name
ORDER BY
  Month,
  Total_Sold DESC;