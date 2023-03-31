WITH revenue_by_bookstore AS (
    SELECT
        sib.bookstoreid,
        SUM(io.item_price * io.item_qty) AS total_revenue
    FROM dbo.items_in_orders_1 AS io
    JOIN dbo.stocks_in_bookstores AS sib ON io.stockid = sib.stockid
    WHERE MONTH(io.delivery_date) = 8 AND YEAR(io.delivery_date) = 2022
    GROUP BY sib.bookstoreid
)
SELECT
    rb.bookstoreid,
    rb.total_revenue
FROM revenue_by_bookstore AS rb
WHERE rb.total_revenue = (
    SELECT MAX(inner_rb.total_revenue)
    FROM revenue_by_bookstore AS inner_rb
)
