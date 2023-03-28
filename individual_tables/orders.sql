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
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER2', N'2022-06-02 22:45:13.000', N'456 Pine St', N'CUSTOMER2');
INSERT INTO a54g3.dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER3', N'2022-06-03 22:45:13.000', N'789 Tree St', N'CUSTOMER3');
