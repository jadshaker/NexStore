SELECT
  Customer.Phone_number,
  Customer.First_name,
  Customer.Last_name,
  SUM(Purchased.Amount) AS Lifetime_Value
FROM
  Customer
  JOIN Orders ON Customer.Phone_number = Orders.Customer_phone_number
  JOIN Purchased ON Orders.Order_id = Purchased.Order_id
GROUP BY
  Customer.Phone_number,
  Customer.First_name,
  Customer.Last_name
ORDER BY
  Lifetime_Value DESC;