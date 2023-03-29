
select T.cid as Customer, title as Title, Q.HighestPub as Price
from items_in_orders_4 as T
join 
	(select distinct Z.cid as selectedCus
	from complaints as Z
	group by Z.cid
	having Count(Z.cid) = 
	(select Max(NumofCom) as MaxComplaints
	from (select Y.cid, Count(Y.complaintsid) as NumOfCom
	from complaints as Y
	group by Y.cid) as X)) as S
on T.cid = S.selectedCus
join
	(select T.cid, max(item_price) as HighestPub
	from items_in_orders_1 as W Join items_in_orders_4 as T
	on W.orderid = T.orderid
	group by T.cid) as Q
on Q.cid = T.cid
join items_in_orders_1 as W
on T.orderid = W.orderid
join stocks_in_bookstores as V
on W.stockid = V.stockid
join magazines as U
on V.pubid = U.pubid
where Q.HighestPub = W.item_price
union all
select T.cid as Customer, title as Title, Q.HighestPub as Price
from items_in_orders_4 as T
join 
	(select distinct Z.cid as selectedCus
	from complaints as Z
	group by Z.cid
	having Count(Z.cid) = 
	(select Max(NumofCom) as MaxComplaints
	from (select Y.cid, Count(Y.complaintsid) as NumOfCom
	from complaints as Y
	group by Y.cid) as X)) as S
on T.cid = S.selectedCus
join
	(select T.cid, max(item_price) as HighestPub
	from items_in_orders_1 as W Join items_in_orders_4 as T
	on W.orderid = T.orderid
	group by T.cid) as Q
on Q.cid = T.cid
join items_in_orders_1 as W
on T.orderid = W.orderid
join stocks_in_bookstores as V
on W.stockid = V.stockid
join books as U
on V.pubid = U.pubid
where Q.HighestPub = W.item_price