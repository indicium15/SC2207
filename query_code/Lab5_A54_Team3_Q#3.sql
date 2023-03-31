SELECT P.pubid, AVG(DATEDIFF(day, O.date_time, IO.delivery_date)) AS avg_days_to_delivery
FROM dbo.publication AS P
JOIN dbo.stocks_in_bookstores AS S ON P.pubid = S.pubid
JOIN dbo.items_in_orders_1 AS IO ON S.stockid = IO.stockid
JOIN dbo.orders AS O ON IO.orderid = O.orderid
WHERE IO.delivery_date IS NOT NULL AND
      MONTH(O.date_time) = 6 AND
      YEAR(O.date_time) = 2022
GROUP BY P.pubid;