create table dbo.books
(
    pubid varchar(50) not null
        primary key
        references dbo.publication,
    title varchar(50) not null
)
go

INSERT INTO a54g3.dbo.books (pubid, title) VALUES (N'PUB1', N'Harry Porter Finale');
INSERT INTO a54g3.dbo.books (pubid, title) VALUES (N'PUB1001', N'AAA Book');
INSERT INTO a54g3.dbo.books (pubid, title) VALUES (N'PUB1002', N'CCC Book');
INSERT INTO a54g3.dbo.books (pubid, title) VALUES (N'PUB1003', N'BBB Book');
INSERT INTO a54g3.dbo.books (pubid, title) VALUES (N'PUB2', N'Book B');
INSERT INTO a54g3.dbo.books (pubid, title) VALUES (N'PUB3', N'Book C');
INSERT INTO a54g3.dbo.books (pubid, title) VALUES (N'PUB4', N'Book D');
INSERT INTO a54g3.dbo.books (pubid, title) VALUES (N'PUB5', N'Book E');
INSERT INTO a54g3.dbo.books (pubid, title) VALUES (N'PUB6', N'Book F');
