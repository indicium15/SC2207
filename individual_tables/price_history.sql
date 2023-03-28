create table dbo.price_history
(
    stockid    varchar(50) not null
        references dbo.stocks_in_bookstores,
    price      float,
    start_date date        not null,
    end_date   date        not null,
    primary key (stockid, start_date, end_date)
)
go

INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1', 10, N'2022-08-01', N'2022-08-15');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK1', 15, N'2022-08-16', N'2022-08-31');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK2', 12.5, N'2022-08-01', N'2022-08-15');
INSERT INTO a54g3.dbo.price_history (stockid, price, start_date, end_date) VALUES (N'STOCK2', 20, N'2022-08-16', N'2022-08-31');