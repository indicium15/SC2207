create table dbo.stocks_in_bookstores
(
    stockid     varchar(50) not null
        primary key,
    stock_price float,
    stock_qty   int,
    bookstoreid varchar(50)
        references dbo.bookstore,
    pubid       varchar(50)
        references dbo.publication
)
go

INSERT INTO a54g3.dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1', 15, 10, N'BS1', N'PUB1');
INSERT INTO a54g3.dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK2', 20, 8, N'BS2', N'PUB1');
INSERT INTO a54g3.dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK3', 50, 10, N'BS1', N'PUB2');
INSERT INTO a54g3.dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK4', 60, 10, N'BS1', N'PUB3');
INSERT INTO a54g3.dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK5', 70, 10, N'BS1', N'PUB4');
INSERT INTO a54g3.dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK6', 12, 23, N'BS1', N'PUB6');
INSERT INTO a54g3.dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK7', 20, 16, N'BS2', N'PUB3');
