create table dbo.complaints_on_orders
(
    complaintsid varchar(50) not null
        primary key
        references dbo.complaints,
    orderid      varchar(50)
        references dbo.orders
)
go

INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT100', N'ORDER100');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT101', N'ORDER101');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT102', N'ORDER102');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT103', N'ORDER103');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT104', N'ORDER104');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT105', N'ORDER105');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT106', N'ORDER106');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT107', N'ORDER107');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT108', N'ORDER108');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT118', N'ORDER109');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT119', N'ORDER110');
INSERT INTO a54g3.dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT120', N'ORDER111');
