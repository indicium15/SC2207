create table dbo.publication
(
    pubid     varchar(50) not null
        primary key,
    publisher varchar(100),
    year      int
)
go

INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB1', N'Nanyang Publisher Company', 2001);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB10', N'Galaxy Mag Company', 2012);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB1001', N'Nanyang Publisher Company', 2021);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB1002', N'BBB Publisher Company', 2020);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB1003', N'Nanyang Publisher Company', 2019);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB1004', N'CCC Publisher Company', 2020);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB1005', N'Nanyang Publisher Company', 2021);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB11', N'Happy TreeF Company', 2013);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB2', N'Nanyang Publisher Company', 2002);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB3', N'Nanyang Publisher Company', 2003);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB4', N'Nanyang Publisher Company', 2004);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB5', N'Nanyang Publisher Company', 2005);
INSERT INTO a54g3.dbo.publication (pubid, publisher, year) VALUES (N'PUB6', N'SCSE Publisher Company', 2006);
