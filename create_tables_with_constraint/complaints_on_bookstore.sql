create table dbo.complaints_on_bookstore
(
    complaintsid varchar(50) not null
        primary key
        references dbo.complaints,
    bookstoreid  varchar(50)
        references dbo.bookstore
)
go

INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT1', N'BS1');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT109', N'BS1');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT110', N'BS1');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT111', N'BS1');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT112', N'BS2');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT113', N'BS2');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT114', N'BS2');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT115', N'BS3');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT116', N'BS3');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT117', N'BS3');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT121', N'BS3');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT122', N'BS3');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT123', N'BS3');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT2', N'BS1');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT3', N'BS2');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT4', N'BS2');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT5', N'BS3');
INSERT INTO a54g3.dbo.complaints_on_bookstore (complaintsid, bookstoreid) VALUES (N'COMPLAINT6', N'BS3');
