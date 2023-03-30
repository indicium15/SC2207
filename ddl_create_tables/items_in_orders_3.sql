create table items_in_orders_3
(
    orderid varchar(50) not null
        references dbo.orders,
    stockid varchar(50) not null
        references dbo.stocks_in_bookstores,
    itemid  varchar(50) not null
        references dbo.items_in_orders_1,
    primary key (orderid, stockid)
)
go

INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1', N'STOCK2', N'ITEM1');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER100', N'STOCK100', N'ITEM100');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1001', N'STOCK1001', N'ITEM1001');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1001', N'STOCK1002', N'ITEM1002');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1002', N'STOCK1004', N'ITEM1003');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1002', N'STOCK1005', N'ITEM1004');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1003', N'STOCK1007', N'ITEM1005');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1003', N'STOCK1008', N'ITEM1006');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1004', N'STOCK10010', N'ITEM1007');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1005', N'STOCK1005', N'ITEM1008');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1005', N'STOCK1006', N'ITEM1009');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER101', N'STOCK101', N'ITEM101');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER102', N'STOCK102', N'ITEM102');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER103', N'STOCK103', N'ITEM103');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER104', N'STOCK104', N'ITEM104');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER105', N'STOCK105', N'ITEM105');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER106', N'STOCK106', N'ITEM106');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER107', N'STOCK107', N'ITEM107');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER108', N'STOCK108', N'ITEM108');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER109', N'STOCK109', N'ITEM109');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER110', N'STOCK110', N'ITEM110');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER111', N'STOCK111', N'ITEM111');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER2', N'STOCK3', N'ITEM2');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER21', N'STOCK21', N'ITEM2001');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER22', N'STOCK22', N'ITEM2002');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER23', N'STOCK23', N'ITEM2003');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER24', N'STOCK24', N'ITEM2004');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER25', N'STOCK25', N'ITEM2005');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER26', N'STOCK26', N'ITEM2006');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER27', N'STOCK27', N'ITEM2007');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER28', N'STOCK28', N'ITEM2008');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER29', N'STOCK29', N'ITEM2009');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER3', N'STOCK4', N'ITEM3');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER31', N'STOCK31', N'ITEM3001');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER32', N'STOCK32', N'ITEM3002');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER33', N'STOCK33', N'ITEM3003');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER34', N'STOCK34', N'ITEM3004');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER35', N'STOCK35', N'ITEM3005');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER36', N'STOCK36', N'ITEM3006');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER37', N'STOCK37', N'ITEM3007');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER38', N'STOCK38', N'ITEM3008');
INSERT INTO items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER39', N'STOCK39', N'ITEM3009');
