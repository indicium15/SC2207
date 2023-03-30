WITH monthly_sales AS (
  SELECT p.pubid, MONTH(o.date_time) AS month, SUM(io1.item_qty) AS sales
  FROM dbo.publication p
  JOIN dbo.stocks_in_bookstores s ON p.pubid = s.pubid
  JOIN dbo.items_in_orders_3 io3 ON s.stockid = io3.stockid
  JOIN dbo.items_in_orders_1 io1 ON io3.itemid = io1.itemid
  JOIN dbo.orders o ON io1.orderid = o.orderid
  GROUP BY p.pubid, MONTH(o.date_time)
),
ranked_sales AS (
  SELECT pubid, month, sales,
    RANK() OVER (PARTITION BY pubid ORDER BY sales) AS sales_rank
  FROM monthly_sales
)
SELECT pubid
FROM ranked_sales
WHERE sales_rank <= 3
GROUP BY pubid
HAVING COUNT(*) = 3;
