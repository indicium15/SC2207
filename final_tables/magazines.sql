create table dbo.magazines
(
    pubid varchar(50)  not null
        primary key
        references dbo.publication,
    title varchar(100) not null,
    issue int          not null
)
go

INSERT INTO a54g3.dbo.magazines (pubid, title, issue) VALUES (N'PUB10', N'PopClub', 54);
INSERT INTO a54g3.dbo.magazines (pubid, title, issue) VALUES (N'PUB1004', N'AAA Magazine', 1);
INSERT INTO a54g3.dbo.magazines (pubid, title, issue) VALUES (N'PUB1005', N'BBB Magazine', 2);
INSERT INTO a54g3.dbo.magazines (pubid, title, issue) VALUES (N'PUB11', N'EatHub', 24);
