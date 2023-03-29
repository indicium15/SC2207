SELECT AVG(DATEDIFF(day,o.date_time, io.delivery_date)) as average_delivery_time
FROM dbo.orders AS o
JOIN dbo.items_in_orders_1 AS io on o.orderid = io.orderid
WHERE MONTH(o.date_time) = 6 AND YEAR(o.date_time) = 2022;
