SELECT P.pubid, P.publisher, MONTH(I.delivery_date) AS month_of_purchase, COUNT(I.itemid) AS total_items
FROM dbo.publication as P 
JOIN dbo.stocks_in_bookstores AS S ON P.pubid = S.pubid
JOIN dbo.items_in_orders_1 as I on S.stockid = I.stockid
JOIN dbo.orders as O ON I.orderid = O.orderid
WHERE O.date_time >= DATEADD(month, -3, GETDATE())
GROUP BY P.pubid, p.publisher, MONTH(I.delivery_date)
ORDER BY total_items;

-- to be worked on later: getting the total number for each month and comparing the increase
-- SELECT P.pubid, P.publisher, COUNT(I.itemid) AS total_items, MIN(I.delivery_date) AS first_purchase_date, MAX(I.delivery_date) AS last_purchase_date
-- FROM dbo.publication as P 
-- JOIN dbo.stocks_in_bookstores AS S ON P.pubid = S.pubid
-- JOIN dbo.items_in_orders_1 as I on S.stockid = I.stockid
-- JOIN dbo.orders as O ON I.orderid = O.orderid
-- WHERE O.date_time >= DATEADD(month, -3, GETDATE())
-- GROUP BY P.pubid, p.publisher, P.year
-- HAVING COUNT(I.itemid)>1;