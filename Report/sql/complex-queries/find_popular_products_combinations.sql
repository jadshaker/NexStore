WITH
  ProductPairs AS (
    SELECT
      p1.Product_SKU AS Product_1,
      p2.Product_SKU AS Product_2,
      COUNT(*) AS Pair_Count
    FROM
      Purchased p1
      JOIN Purchased p2 ON p1.Order_id = p2.Order_id
      AND p1.Product_SKU < p2.Product_SKU
    GROUP BY
      p1.Product_SKU,
      p2.Product_SKU
  )
SELECT
  Product_1,
  Product_2,
  Pair_Count
FROM
  ProductPairs
WHERE
  Pair_Count > 5
ORDER BY
  Pair_Count DESC;