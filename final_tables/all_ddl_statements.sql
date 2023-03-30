use a54g3
go

create table dbo.bookstore
(
    bookstoreid varchar(50) not null
        primary key
)
go

create table dbo.customers
(
    cid  varchar(50)  not null
        primary key,
    name varchar(100) not null
)
go

create table dbo.employees
(
    eid    varchar(50)  not null
        primary key,
    name   varchar(100) not null,
    salary int          not null
        constraint CK_employees_salary
            check ([salary] > 0)
)
go

create table dbo.complaints
(
    complaintsid      varchar(50) not null
        primary key,
    cid               varchar(50) not null
        references dbo.customers,
    eid               varchar(50)
        references dbo.employees,
    handled_date_time datetime,
    complain_text     text        not null,
    filled_date_time  datetime    not null
)
go

create table dbo.complaints_on_bookstore
(
    complaintsid varchar(50) not null
        primary key
        references dbo.complaints,
    bookstoreid  varchar(50)
        references dbo.bookstore
)
go

create table dbo.orders
(
    orderid          varchar(50)  not null
        primary key,
    date_time        datetime     not null,
    shipping_address varchar(500) not null,
    cid              varchar(50)  not null
        references dbo.customers
)
go

create table dbo.complaints_on_orders
(
    complaintsid varchar(50) not null
        primary key
        references dbo.complaints,
    orderid      varchar(50)
        references dbo.orders
)
go

create table dbo.items_in_orders_4
(
    orderid varchar(50) not null
        primary key
        references dbo.orders,
    cid     varchar(50) not null
        references dbo.customers
)
go

create table dbo.publication
(
    pubid     varchar(50)  not null
        primary key,
    publisher varchar(100) not null,
    year      int          not null
)
go

create table dbo.books
(
    pubid varchar(50) not null
        primary key
        references dbo.publication,
    title varchar(50) not null
)
go

create table dbo.magazines
(
    pubid varchar(50)  not null
        primary key
        references dbo.publication,
    title varchar(100) not null,
    issue int          not null
)
go

create table dbo.stocks_in_bookstores
(
    stockid     varchar(50) not null
        primary key,
    stock_price float       not null,
    stock_qty   int         not null,
    bookstoreid varchar(50) not null
        references dbo.bookstore,
    pubid       varchar(50) not null
        references dbo.publication
)
go

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

CREATE TRIGGER update_item_price
ON dbo.items_in_orders_1
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE iio1
    SET iio1.item_price = ph.price
    FROM dbo.items_in_orders_1 AS iio1
    JOIN dbo.price_history AS ph ON iio1.stockid = ph.stockid
    WHERE iio1.delivery_date BETWEEN ph.start_date AND ph.end_date;
END;
go

create table dbo.items_in_orders_2
(
    itemid             varchar(50) not null
        references dbo.items_in_orders_1,
    comment            varchar(100),
    rating             float,
    feedback_date_time datetime
)
go

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

create table dbo.orderstatus
(
    itemid      varchar(50) not null
        references dbo.items_in_orders_1,
    status_date date        not null,
    state       char(50)    not null
        constraint CK_orderstatus_state
            check ([state] = 'returned' OR [state] = 'delivered' OR [state] = 'shipped' OR [state] = 'being processed'),
    primary key (itemid, status_date)
)
go

create table dbo.price_history
(
    stockid    varchar(50) not null
        references dbo.stocks_in_bookstores,
    price      float       not null,
    start_date date        not null,
    end_date   date        not null,
    primary key (stockid, start_date, end_date)
)
go

