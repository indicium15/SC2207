create table dbo.customers
(
    cid  varchar(50)  not null
        primary key,
    name varchar(100) not null
)
go

INSERT INTO a54g3.dbo.customers (cid, name) VALUES (N'CUSTOMER1', N'Chaitanya');
INSERT INTO a54g3.dbo.customers (cid, name) VALUES (N'CUSTOMER2', N'XYZ');
INSERT INTO a54g3.dbo.customers (cid, name) VALUES (N'CUSTOMER3', N'John');
