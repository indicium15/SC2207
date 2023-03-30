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

INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1', 15, 10, N'BS1', N'PUB1');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK100', 20, 10, N'BS2', N'PUB1');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1001', 10, 20, N'BS1001', N'PUB1001');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK10010', 10, 20, N'BS1004', N'PUB1002');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK10011', 10, 20, N'BS1004', N'PUB1003');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK10012', 10, 20, N'BS1004', N'PUB1005');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1002', 10, 20, N'BS1001', N'PUB1002');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1003', 10, 20, N'BS1001', N'PUB1003');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1004', 10, 20, N'BS1002', N'PUB1002');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1005', 10, 20, N'BS1002', N'PUB1004');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1006', 10, 20, N'BS1002', N'PUB1005');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1007', 10, 20, N'BS1003', N'PUB1003');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1008', 10, 20, N'BS1003', N'PUB1001');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK1009', 10, 20, N'BS1003', N'PUB1005');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK101', 10, 8, N'BS1', N'PUB1');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK102', 60, 10, N'BS1', N'PUB2');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK103', 60, 10, N'BS1', N'PUB3');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK104', 20, 8, N'BS2', N'PUB6');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK105', 60, 10, N'BS1', N'PUB4');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK106', 80, 10, N'BS1', N'PUB10');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK107', 70, 8, N'BS2', N'PUB11');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK108', 90, 10, N'BS1', N'PUB11');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK109', 80, 10, N'BS1', N'PUB10');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK110', 70, 8, N'BS2', N'PUB11');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK111', 90, 10, N'BS1', N'PUB11');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK2', 20, 8, N'BS2', N'PUB1');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK21', 10, 21, N'BS1', N'PUB2001');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK22', 10, 21, N'BS1', N'PUB2001');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK23', 10, 21, N'BS1', N'PUB2001');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK24', 10, 21, N'BS1', N'PUB2004');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK25', 10, 21, N'BS1', N'PUB2004');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK26', 10, 21, N'BS1', N'PUB2004');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK27', 10, 21, N'BS1', N'PUB2005');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK28', 10, 21, N'BS1', N'PUB2005');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK29', 10, 21, N'BS1', N'PUB2005');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK3', 50, 10, N'BS1', N'PUB2');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK31', 10, 21, N'BS1', N'PUB2006');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK32', 10, 21, N'BS1', N'PUB2006');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK33', 10, 21, N'BS1', N'PUB2006');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK34', 10, 21, N'BS1', N'PUB2007');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK35', 10, 21, N'BS1', N'PUB2007');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK36', 10, 21, N'BS1', N'PUB2007');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK37', 10, 21, N'BS1', N'PUB2008');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK38', 10, 21, N'BS1', N'PUB2008');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK39', 10, 21, N'BS1', N'PUB2008');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK4', 60, 10, N'BS1', N'PUB3');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK5', 70, 10, N'BS1', N'PUB4');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK6', 12, 23, N'BS1', N'PUB6');
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK7', 20, 16, N'BS2', N'PUB3');
