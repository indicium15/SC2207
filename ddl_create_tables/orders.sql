create table dbo.orders
(
    orderid          varchar(50) not null
        primary key,
    date_time        datetime,
    shipping_address varchar(500),
    cid              varchar(50)
        references dbo.customers
)
go

INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER1', N'2022-06-01 22:45:13.000', N'123 Oak St', N'CUSTOMER1');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER100', N'2022-04-19 00:30:12.000', N'420 Dover St', N'CUSTOMER100');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER1001', N'2022-08-02 22:45:13.000', N'Blk 111 ABC Road', N'CUSTOMER1001');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER1002', N'2022-08-03 22:45:13.000', N'Blk 222 ABC Road', N'CUSTOMER1002');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER1003', N'2022-08-05 22:45:13.000', N'Blk 333 ABC Road', N'CUSTOMER1003');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER1004', N'2022-08-06 22:45:13.000', N'Blk 444 ABC Road', N'CUSTOMER1004');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER1005', N'2022-08-03 22:45:13.000', N'Blk 555 ABC Road', N'CUSTOMER1005');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER101', N'2022-05-24 20:05:13.000', N'420 Dover St', N'CUSTOMER100');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER102', N'2022-05-28 23:50:20.000', N'420 Dover St', N'CUSTOMER100');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER103', N'2022-04-19 00:30:12.000', N'422 Devar St', N'CUSTOMER101');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER104', N'2022-05-24 20:05:13.000', N'422 Devar St', N'CUSTOMER101');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER105', N'2022-05-28 23:50:20.000', N'422 Devar St', N'CUSTOMER101');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER106', N'2022-04-19 00:30:12.000', N'320 Cover St', N'CUSTOMER102');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER107', N'2022-05-24 20:05:13.000', N'320 Cover St', N'CUSTOMER102');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER108', N'2022-05-28 23:50:20.000', N'320 Cover St', N'CUSTOMER102');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER109', N'2022-04-19 00:30:12.000', N'320 Flover St', N'CUSTOMER103');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER110', N'2022-05-24 20:05:13.000', N'320 Flover St', N'CUSTOMER103');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER111', N'2022-05-28 23:50:20.000', N'320 Flover St', N'CUSTOMER103');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER2', N'2022-06-02 22:45:13.000', N'456 Pine St', N'CUSTOMER2');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER21', N'2022-06-15 22:21:23.000', N'Boon Lay Street 12', N'CUSTOMER100');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER22', N'2022-07-15 22:21:23.000', N'Boon Lay Street 12', N'CUSTOMER100');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER23', N'2022-08-15 22:21:23.000', N'Boon Lay Street 12', N'CUSTOMER100');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER3', N'2022-06-03 22:45:13.000', N'789 Tree St', N'CUSTOMER3');
