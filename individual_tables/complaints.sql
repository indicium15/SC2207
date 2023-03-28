create table dbo.complaints
(
    complaintsid      varchar(50) not null
        primary key,
    cid               varchar(50)
        references dbo.customers,
    eid               varchar(50)
        references dbo.employees,
    handled_date_time datetime,
    complain_text     text,
    filled_date_time  datetime
)
go

INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT1', N'CUSTOMER1', N'EMPLOYEE1', N'2022-06-15 00:52:50.000', N'Bad bookstore', N'2022-06-01 00:54:23.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT2', N'CUSTOMER2', N'EMPLOYEE1', N'2022-06-16 00:52:50.000', N'Very bad bookstore', N'2022-06-02 00:54:23.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT3', N'CUSTOMER3', N'EMPLOYEE1', N'2022-06-17 00:52:50.000', N'Extremely dirty bookstore', N'2022-06-03 00:54:23.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT4', N'CUSTOMER1', N'EMPLOYEE2', N'2022-06-14 00:52:50.000', N'Bad customer service', N'2022-06-04 00:54:23.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT5', N'CUSTOMER2', N'EMPLOYEE2', N'2022-06-15 00:53:50.000', N'Bad books', N'2022-06-05 00:54:23.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT6', N'CUSTOMER3', N'EMPLOYEE2', N'2022-06-16 00:54:50.000', N'No books in store', N'2022-06-06 00:54:23.000');
