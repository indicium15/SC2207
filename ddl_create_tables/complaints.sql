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

INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT1', N'CUSTOMER1', N'EMPLOYEE1', N'2022-06-15 00:52:50.000', N'Bad bookstore', N'2022-06-01 00:54:23.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT100', N'CUSTOMER100', N'EMPLOYEE2', N'2022-05-11 10:12:00.000', N'Why the book not in english', N'2022-04-20 01:50:40.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT101', N'CUSTOMER100', N'EMPLOYEE2', N'2022-06-15 07:30:27.000', N'The book is torn, wth', N'2022-05-25 00:30:15.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT102', N'CUSTOMER100', N'EMPLOYEE2', N'2022-06-20 13:50:43.000', N'The book words so small', N'2022-05-29 12:35:00.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT103', N'CUSTOMER101', N'EMPLOYEE1', N'2022-05-12 10:12:00.000', N'Cliff hanger bad', N'2022-04-20 01:50:40.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT104', N'CUSTOMER101', N'EMPLOYEE1', N'2022-06-16 07:30:27.000', N'wrong book version', N'2022-05-25 00:30:15.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT105', N'CUSTOMER101', N'EMPLOYEE1', N'2022-06-21 13:50:43.000', N'book came damaged', N'2022-05-29 12:35:00.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT106', N'CUSTOMER102', N'EMPLOYEE2', N'2022-05-13 10:12:00.000', N'magazine is old', N'2022-04-20 01:50:40.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT107', N'CUSTOMER102', N'EMPLOYEE1', N'2022-06-17 07:30:27.000', N'wrong magazine issue', N'2022-05-25 00:30:15.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT108', N'CUSTOMER102', N'EMPLOYEE2', N'2022-06-22 13:50:43.000', N'magazine was torn', N'2022-05-29 12:35:00.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT109', N'CUSTOMER100', N'EMPLOYEE2', N'2022-05-11 10:12:00.000', N'Why the bookstore not in english', N'2022-04-20 01:50:40.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT110', N'CUSTOMER100', N'EMPLOYEE2', N'2022-06-15 07:30:27.000', N'The booksore in disrepair, wth', N'2022-05-25 00:30:15.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT111', N'CUSTOMER100', N'EMPLOYEE2', N'2022-06-20 13:50:43.000', N'The bookstore so small', N'2022-05-29 12:35:00.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT112', N'CUSTOMER101', N'EMPLOYEE1', N'2022-05-12 10:12:00.000', N'Bookstore ugly', N'2022-04-20 01:50:40.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT113', N'CUSTOMER101', N'EMPLOYEE1', N'2022-06-16 07:30:27.000', N'wrong bookstore', N'2022-05-25 00:30:15.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT114', N'CUSTOMER101', N'EMPLOYEE1', N'2022-06-21 13:50:43.000', N'bookstore not fun', N'2022-05-29 12:35:00.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT115', N'CUSTOMER102', N'EMPLOYEE2', N'2022-05-13 10:12:00.000', N'bookstore is old', N'2022-04-20 01:50:40.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT116', N'CUSTOMER102', N'EMPLOYEE1', N'2022-06-17 07:30:27.000', N'bookstore is confusing', N'2022-05-25 00:30:15.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT117', N'CUSTOMER102', N'EMPLOYEE2', N'2022-06-22 13:50:43.000', N'bad customer service', N'2022-05-29 12:35:00.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT118', N'CUSTOMER103', N'EMPLOYEE2', N'2022-05-13 10:12:00.000', N'magazine is old', N'2022-04-20 01:50:40.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT119', N'CUSTOMER103', N'EMPLOYEE1', N'2022-06-17 07:30:27.000', N'wrong magazine issue', N'2022-05-25 00:30:15.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT120', N'CUSTOMER103', N'EMPLOYEE2', N'2022-06-22 13:50:43.000', N'magazine was torn', N'2022-05-29 12:35:00.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT121', N'CUSTOMER103', N'EMPLOYEE2', N'2022-05-13 10:12:00.000', N'bookstore is old', N'2022-04-20 01:50:40.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT122', N'CUSTOMER103', N'EMPLOYEE1', N'2022-06-17 07:30:27.000', N'bookstore is confusing', N'2022-05-25 00:30:15.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT123', N'CUSTOMER103', N'EMPLOYEE2', N'2022-06-22 13:50:43.000', N'bad customer service', N'2022-05-29 12:35:00.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT2', N'CUSTOMER2', N'EMPLOYEE1', N'2022-06-16 00:52:50.000', N'Very bad bookstore', N'2022-06-02 00:54:23.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT3', N'CUSTOMER3', N'EMPLOYEE1', N'2022-06-17 00:52:50.000', N'Extremely dirty bookstore', N'2022-06-03 00:54:23.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT4', N'CUSTOMER1', N'EMPLOYEE2', N'2022-06-14 00:52:50.000', N'Bad customer service', N'2022-06-04 00:54:23.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT5', N'CUSTOMER2', N'EMPLOYEE2', N'2022-06-15 00:53:50.000', N'Bad books', N'2022-06-05 00:54:23.000');
INSERT INTO a54g3.dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT6', N'CUSTOMER3', N'EMPLOYEE2', N'2022-06-16 00:54:50.000', N'No books in store', N'2022-06-06 00:54:23.000');
