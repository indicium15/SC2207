SELECT T.cid AS Customer, title AS Title, Q.HighestPub AS Price
FROM items_in_orders_4 AS T
JOIN 
	(SELECT DISTINCT Z.cid AS SELECTedCus
	FROM complaints AS Z
	GROUP BY Z.cid
	HAVING Count(Z.cid) = 
	(SELECT Max(NumofCom) AS MaxComplaints
	FROM (SELECT Y.cid, Count(Y.complaintsid) AS NumOfCom
	FROM complaints AS Y
	GROUP BY Y.cid) AS X)) AS S
ON T.cid = S.SELECTedCus
JOIN
	(SELECT T.cid, max(item_price) AS HighestPub
	FROM items_in_orders_1 AS W JOIN items_in_orders_4 AS T
	ON W.orderid = T.orderid
	GROUP BY T.cid) AS Q
ON Q.cid = T.cid
JOIN items_in_orders_1 AS W
ON T.orderid = W.orderid
JOIN stocks_in_bookstores AS V
ON W.stockid = V.stockid
JOIN magazines AS U
ON V.pubid = U.pubid
WHERE Q.HighestPub = W.item_price
UNION ALL
SELECT T.cid AS Customer, title AS Title, Q.HighestPub AS Price
FROM items_in_orders_4 AS T
JOIN 
	(SELECT DISTINCT Z.cid AS selectedCus
	FROM complaints AS Z
	GROUP BY Z.cid
	HAVING Count(Z.cid) = 
	(SELECT Max(NumofCom) AS MaxComplaints
	FROM (SELECT Y.cid, Count(Y.complaintsid) AS NumOfCom
	FROM complaints AS Y
	GROUP BY Y.cid) AS X)) AS S
ON T.cid = S.selectedCus
JOIN
	(SELECT T.cid, max(item_price) AS HighestPub
	FROM items_in_orders_1 AS W JOIN items_in_orders_4 AS T
	ON W.orderid = T.orderid
	GROUP BY T.cid) AS Q
ON Q.cid = T.cid
JOIN items_in_orders_1 AS W
ON T.orderid = W.orderid
JOIN stocks_in_bookstores AS V
ON W.stockid = V.stockid
JOIN books AS U
ON V.pubid = U.pubid
WHERE Q.HighestPub = W.item_price