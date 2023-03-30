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

INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM1', N'2022-06-15', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM1001', N'2022-08-01', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM1002', N'2022-08-05', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM1003', N'2022-08-15', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM1004', N'2022-08-17', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM1005', N'2022-08-18', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM1006', N'2022-08-19', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM1007', N'2022-08-20', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM1008', N'2022-07-10', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM1009', N'2022-07-10', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM2', N'2022-06-16', N'delivered                                         ');
INSERT INTO a54g3.dbo.orderstatus (itemid, status_date, state) VALUES (N'ITEM3', N'2022-06-17', N'delivered                                         ');
