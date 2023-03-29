create table dbo.complaints_on_orders
(
    complaintsid varchar(50) not null
        primary key
        references dbo.complaints,
    orderid      varchar(50)
        references dbo.orders
)
go

