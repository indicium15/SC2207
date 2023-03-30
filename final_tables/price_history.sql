create table dbo.price_history
(
    stockid    varchar(50) not null
        references dbo.stocks_in_bookstores,
    price      float       not null,
    start_date date        not null,
    end_date   date        not null,
    primary key (stockid, start_date, end_date)
)
go

INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1', 10, N'2022-08-01', N'2022-08-15');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1', 15, N'2022-08-16', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1001', 20, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK10010', 19, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK10011', 21, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK10012', 18, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1002', 18, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1003', 17, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1004', 20, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1005', 18, N'2022-07-01', N'2022-07-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1005', 18, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1006', 19, N'2022-07-01', N'2022-07-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1006', 21, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1007', 20, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1008', 18, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1009', 20, N'2022-08-01', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK2', 10, N'2022-06-01', N'2022-06-30');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK2', 12.5, N'2022-08-01', N'2022-08-15');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK2', 20, N'2022-08-16', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK3', 15, N'2022-06-01', N'2022-06-30');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK4', 20, N'2022-06-01', N'2022-06-30');
