WITH
  StockLevels AS (
    SELECT
      Branch_phone_number,
      Product_SKU,
      Quantity,
      ROW_NUMBER() OVER (
        PARTITION BY
          Branch_phone_number
        ORDER BY
          Quantity ASC
      ) AS Stock_Rank
    FROM
      Located_in
  )
SELECT
  Branch.Phone_number AS Branch_ID,
  Branch.Name AS Branch_Name,
  StockLevels.Product_SKU,
  StockLevels.Quantity AS Current_Stock
FROM
  Branch
  JOIN StockLevels ON Branch.Phone_number = StockLevels.Branch_phone_number
WHERE
  StockLevels.Stock_Rank <= 3
ORDER BY
  Branch_ID,
  Current_Stock ASC;