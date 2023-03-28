create table dbo.publication
(
    pubid     varchar(50) not null
        primary key,
    publisher varchar(100),
    year      int
)
go

INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB1', N'Nanyang Publisher Company', 2001);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB2', N'Nanyang Publisher Company', 2002);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB3', N'Nanyang Publisher Company', 2003);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB4', N'Nanyang Publisher Company', 2004);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB5', N'Nanyang Publisher Company', 2005);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB6', N'SCSE Publisher Company', 2006);
