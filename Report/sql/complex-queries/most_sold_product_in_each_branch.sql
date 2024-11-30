WITH
  Product_Sales AS (
    SELECT
      L.Branch_phone_number,
      P.Product_SKU,
      SUM(P.Quantity) AS Total_Sold
    FROM
      Purchased P
      JOIN Located_in L ON P.Product_SKU = L.Product_SKU
    GROUP BY
      L.Branch_phone_number,
      P.Product_SKU
  ),
  Max_Sales_Per_Branch AS (
    SELECT
      Branch_phone_number,
      MAX(Total_Sold) AS Max_Sold
    FROM
      Product_Sales
    GROUP BY
      Branch_phone_number
  )
SELECT
  PS.Branch_phone_number,
  PS.Product_SKU,
  PS.Total_Sold
FROM
  Product_Sales PS
  JOIN Max_Sales_Per_Branch MSPB ON PS.Branch_phone_number = MSPB.Branch_phone_number
  AND PS.Total_Sold = MSPB.Max_Sold;