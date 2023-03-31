WITH monthly_sales AS (
    SELECT
        p.pubid,
        DATEPART(month, o.date_time) AS month,
        SUM(io.item_qty) AS sales
    FROM
        dbo.publication p
        JOIN dbo.stocks_in_bookstores s ON p.pubid = s.pubid
        JOIN dbo.items_in_orders_1 io ON s.stockid = io.stockid
        JOIN dbo.orders o ON io.orderid = o.orderid
    GROUP BY
        p.pubid,
        DATEPART(month, o.date_time)
),
sales_diff AS (
    SELECT
        pubid,
        month,
        sales,
        COALESCE(LAG(sales, 1) OVER (PARTITION BY pubid ORDER BY month), 0) AS prev_sales_1,
        COALESCE(LAG(sales, 2) OVER (PARTITION BY pubid ORDER BY month), 0) AS prev_sales_2,
        COALESCE(LAG(sales, 3) OVER (PARTITION BY pubid ORDER BY month), 0) AS prev_sales_3
    FROM monthly_sales
)
SELECT DISTINCT pubid FROM sales_diff WHERE sales > prev_sales_1 AND prev_sales_1 > prev_sales_2 AND prev_sales_2 > prev_sales_3;