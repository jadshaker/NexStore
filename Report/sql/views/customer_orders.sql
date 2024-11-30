CREATE VIEW
  Customer_Orders AS
SELECT
  Customer.Phone_number,
  Customer.First_name,
  Customer.Last_name,
  COUNT(Order.Order_id) AS Total_Orders
FROM
  Customer
  JOIN Order ON Customer.Phone_number = Order.Customer_phone_number
GROUP BY
  Customer.Phone_number,
  Customer.First_name,
  Customer.Last_name;

SELECT * FROM Customer_Orders;