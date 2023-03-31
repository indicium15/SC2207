SELECT P.pubid,
       AVG(io2.rating) as avg_rating
FROM dbo.publication as P
JOIN dbo.stocks_in_bookstores as S on P.pubid = S.pubid
JOIN dbo.items_in_orders_1 as IO1 on S.stockid = IO1.stockid
JOIN dbo.items_in_orders_2 as IO2 on IO1.itemid = IO2.itemid
WHERE rating =5
AND IO2.feedback_date_time >= '2022-08-01'
AND IO2.feedback_date_time <= '2022-08-31'
GROUP BY P.pubid
HAVING COUNT(*) >= 10
ORDER BY avg_rating DESC;

