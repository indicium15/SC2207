create table dbo.magazines
(
    pubid varchar(50) not null
        primary key
        references dbo.publication,
    title varchar(100),
    issue int
)
go

