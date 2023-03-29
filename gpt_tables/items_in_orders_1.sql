create table dbo.items_in_orders_1
(
    itemid        varchar(50) not null
        primary key,
    item_price    float,
    item_qty      int         not null,
    orderid       varchar(50) not null
        references dbo.orders,
    delivery_date date,
    stockid       varchar(50) not null
        references dbo.stocks_in_bookstores
)
go

INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1', 10, 1, N'ORDER1', N'2022-06-15', N'STOCK2');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM100', 25, 1, N'ORDER100', N'2022-04-19', N'STOCK100');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1001', 20, 3, N'ORDER1001', N'2022-08-02', N'STOCK1001');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1002', 18, 2, N'ORDER1001', N'2022-08-05', N'STOCK1002');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1003', 20, 3, N'ORDER1002', N'2022-08-15', N'STOCK1004');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1004', 18, 2, N'ORDER1002', N'2022-08-17', N'STOCK1005');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1005', 20, 3, N'ORDER1003', N'2022-08-18', N'STOCK1007');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1006', 18, 2, N'ORDER1003', N'2022-08-19', N'STOCK1008');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1007', 19, 1, N'ORDER1004', N'2022-08-20', N'STOCK10010');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1008', 18, 1, N'ORDER1005', N'2022-07-10', N'STOCK1005');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1009', 19, 1, N'ORDER1005', N'2022-07-10', N'STOCK1006');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM101', 15, 1, N'ORDER101', N'2022-05-24', N'STOCK101');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM102', 65, 1, N'ORDER102', N'2022-05-28', N'STOCK102');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM103', 60, 1, N'ORDER103', N'2022-04-19', N'STOCK103');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM104', 27, 2, N'ORDER104', N'2022-05-24', N'STOCK104');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM105', 69, 1, N'ORDER105', N'2022-05-28', N'STOCK105');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM106', 88, 1, N'ORDER106', N'2022-04-19', N'STOCK106');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM107', 71, 1, N'ORDER107', N'2022-05-24', N'STOCK107');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM108', 93, 2, N'ORDER108', N'2022-05-28', N'STOCK108');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM109', 88, 1, N'ORDER109', N'2022-04-19', N'STOCK109');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM110', 71, 1, N'ORDER110', N'2022-05-24', N'STOCK110');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM111', 93, 2, N'ORDER111', N'2022-05-28', N'STOCK111');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM2', 15, 2, N'ORDER2', N'2022-06-16', N'STOCK3');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM2001', 10, 1, N'ORDER21', N'2022-06-15', N'STOCK21');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM2002', 10, 2, N'ORDER22', N'2022-07-15', N'STOCK22');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM2003', 10, 3, N'ORDER23', N'2022-08-15', N'STOCK23');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM3', 20, 3, N'ORDER3', N'2022-06-17', N'STOCK4');
