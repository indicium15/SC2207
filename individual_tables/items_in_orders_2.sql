create table dbo.items_in_orders_2
(
    itemid             varchar(50) not null
        references dbo.items_in_orders_1,
    comment            varchar(100),
    rating             float,
    feedback_date_time datetime
)
go

INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM1', N'Comment1', 5, N'2022-08-01 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM1', N'Comment2', 5, N'2022-08-02 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM1', N'Comment3', 5, N'2022-08-03 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM1', N'Comment4', 5, N'2022-08-04 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM1', N'Comment5', 5, N'2022-08-05 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM1', N'Comment6', 5, N'2022-08-06 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM1', N'Comment7', 5, N'2022-08-07 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM1', N'Comment8', 5, N'2022-08-08 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM1', N'Comment9', 5, N'2022-08-09 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM1', N'Comment10', 5, N'2022-08-10 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment11', 5, N'2022-08-11 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment12', 5, N'2022-08-12 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment13', 5, N'2022-08-13 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment14', 5, N'2022-08-14 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment15', 5, N'2022-08-15 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment16', 5, N'2022-08-16 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment17', 5, N'2022-08-17 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment18', 5, N'2022-08-18 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment19', 5, N'2022-08-19 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment20', 5, N'2022-08-20 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM2', N'Comment21', 4, N'2022-08-21 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM3', N'Comment22', 1, N'2022-09-29 00:41:27.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM3', N'Comment23', 5, N'2022-08-22 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM3', N'Comment24', 5, N'2022-08-23 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM3', N'Comment25', 5, N'2022-08-24 00:38:42.000');
INSERT INTO a54g3.dbo.items_in_orders_2 (itemid, comment, rating, feedback_date_time) VALUES (N'ITEM3', N'Comment26', 5, N'2022-08-25 00:38:42.000');
