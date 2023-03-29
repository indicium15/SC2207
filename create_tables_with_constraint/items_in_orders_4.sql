create table dbo.items_in_orders_4
(
    orderid varchar(50) not null
        primary key
        references dbo.orders,
    cid     varchar(50) not null
        references dbo.customers
)
go

