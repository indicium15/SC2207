create table dbo.publication
(
    pubid     varchar(50) not null
        primary key,
    publisher varchar(100),
    year      int
)
go

INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB1', N'Nanyang Publisher Company', 2001);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB10', N'Galaxy Mag Company', 2012);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB1001', N'Nanyang Publisher Company', 2021);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB1002', N'BBB Publisher Company', 2020);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB1003', N'Nanyang Publisher Company', 2019);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB1004', N'CCC Publisher Company', 2020);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB1005', N'Nanyang Publisher Company', 2021);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB11', N'Happy TreeF Company', 2013);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB2', N'Nanyang Publisher Company', 2002);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB2001', N'Popular Publisher Company', 2020);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB2004', N'Penguin Publishing Company', 2011);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB2005', N'Macmillan Company', 2004);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB2006', N'Reader''s Digest', 2001);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB2007', N'NBS Publisher Company', 2001);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB2008', N'Kinokuniya Publishing Company', 2003);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB3', N'Nanyang Publisher Company', 2003);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB4', N'Nanyang Publisher Company', 2004);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB5', N'Nanyang Publisher Company', 2005);
INSERT INTO PUBLICATION (pubid, publisher, year) VALUES (N'PUB6', N'SCSE Publisher Company', 2006);
