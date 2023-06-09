create table dbo.items_in_orders_4
(
    orderid varchar(50) not null
        primary key
        references dbo.orders,
    cid     varchar(50) not null
        references dbo.customers
)
go

INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER1', N'CUSTOMER1');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER100', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER1001', N'CUSTOMER1001');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER1002', N'CUSTOMER1002');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER1003', N'CUSTOMER1003');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER1004', N'CUSTOMER1004');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER1005', N'CUSTOMER1005');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER101', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER102', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER103', N'CUSTOMER101');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER104', N'CUSTOMER101');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER105', N'CUSTOMER101');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER106', N'CUSTOMER102');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER107', N'CUSTOMER102');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER108', N'CUSTOMER102');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER109', N'CUSTOMER103');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER110', N'CUSTOMER103');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER111', N'CUSTOMER103');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER2', N'CUSTOMER2');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER21', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER22', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER24', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER25', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER26', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER27', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER28', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER29', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER3', N'CUSTOMER3');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER31', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER32', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER33', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER34', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER35', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER36', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER37', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER38', N'CUSTOMER100');
INSERT INTO a54g3.dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER39', N'CUSTOMER100');
