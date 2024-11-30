SELECT
  Coupon.Code,
  Product.SKU,
  Product.Name,
  COUNT(*) AS Times_Discounted,
  SUM(Coupon.Discount_amount) AS Total_Discount_Amount
FROM
  Coupon
  JOIN Orders ON Coupon.Order_ID = Orders.Order_ID
  JOIN Purchased ON Orders.Order_ID = Purchased.Order_ID
  JOIN Product ON Purchased.Product_SKU = Product.SKU
GROUP BY
  Coupon.Code,
  Product.SKU,
  Product.Name
ORDER BY
  Total_Discount_Amount DESC;