create table dbo.orderstatus
(
    itemid      varchar(50) not null
        references dbo.items_in_orders_1,
    status_date date        not null,
    state       char(50),
    primary key (itemid, status_date)
)
go

