WITH
  BranchSales AS (
    SELECT
      Branch_phone_number,
      SUM(Purchased.Amount) AS Total_Revenue
    FROM
      Purchased
      JOIN Located_in ON Purchased.Product_SKU = Located_in.Product_SKU
    GROUP BY
      Branch_phone_number
  )
SELECT
  Branch_phone_number,
  Total_Revenue
FROM
  (
    SELECT
      Branch_phone_number,
      Total_Revenue,
      RANK() OVER (
        ORDER BY
          Total_Revenue DESC
      ) AS Rank
    FROM
      BranchSales
  ) RankedSales
WHERE
  Rank = 1;