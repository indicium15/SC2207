create table dbo.items_in_orders_1
(
    itemid        varchar(50) not null
        primary key,
    item_price    float,
    item_qty      int,
    orderid       varchar(50)
        references dbo.orders,
    delivery_date date,
    stockid       varchar(50)
        references dbo.stocks_in_bookstores
)
go

INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM1', 10, 1, N'ORDER1', N'2022-06-15', N'STOCK2');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM2', 20, 2, N'ORDER2', N'2022-06-16', N'STOCK3');
INSERT INTO a54g3.dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM3', 30, 3, N'ORDER3', N'2022-06-17', N'STOCK4');
