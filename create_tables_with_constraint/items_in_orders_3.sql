create table dbo.items_in_orders_3
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

INSERT INTO a54g3.dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER1', N'STOCK2', N'ITEM1');
INSERT INTO a54g3.dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER2', N'STOCK3', N'ITEM2');
INSERT INTO a54g3.dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER3', N'STOCK4', N'ITEM3');
