SELECT
  Customer.First_name,
  Customer.Last_name,
  COUNT(Orders.Order_id) AS Total_Orders
FROM
  Customer
  JOIN Orders ON Customer.Phone_number = Orders.Customer_phone_number
GROUP BY
  Customer.First_name,
  Customer.Last_name
ORDER BY
  Total_Orders DESC
FETCH FIRST
  5 ROWS ONLY;