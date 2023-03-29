-- Create Magazine publishers
INSERT INTO dbo.publication (pubid, publisher, year) VALUES (N'PUB10', N'Galaxy Mag Company', 2012);
INSERT INTO dbo.publication (pubid, publisher, year) VALUES (N'PUB11', N'Happy TreeF Company', 2013);

-- Create an expensive Magazine
INSERT INTO dbo.magazines (pubid, title, issue) VALUES (N'PUB10', N'PopClub','54');
INSERT INTO dbo.magazines (pubid, title, issue) VALUES (N'PUB11', N'EatHub','24');

-- Introduce our most complaining Customers
INSERT INTO dbo.customers (cid, name) VALUES (N'CUSTOMER100', N'Irfan');
INSERT INTO dbo.customers (cid, name) VALUES (N'CUSTOMER101', N'Bobby');
INSERT INTO dbo.customers (cid, name) VALUES (N'CUSTOMER102', N'Sam');
INSERT INTO dbo.customers (cid, name) VALUES (N'CUSTOMER103', N'Jolly');

-- Create 6 complaints each for the customers (3 orders, 3 bookstores)
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT100', N'CUSTOMER100', N'EMPLOYEE2', N'2022-05-11 10:12:00.000', N'Why the book not in english', N'2022-04-20 01:50:40.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT101', N'CUSTOMER100', N'EMPLOYEE2', N'2022-06-15 07:30:27.000', N'The book is torn, wth', N'2022-05-25 00:30:15.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT102', N'CUSTOMER100', N'EMPLOYEE2', N'2022-06-20 13:50:43.000', N'The book words so small', N'2022-05-29 12:35:00.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT109', N'CUSTOMER100', N'EMPLOYEE2', N'2022-05-11 10:12:00.000', N'Why the bookstore not in english', N'2022-04-20 01:50:40.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT110', N'CUSTOMER100', N'EMPLOYEE2', N'2022-06-15 07:30:27.000', N'The booksore in disrepair, wth', N'2022-05-25 00:30:15.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT111', N'CUSTOMER100', N'EMPLOYEE2', N'2022-06-20 13:50:43.000', N'The bookstore so small', N'2022-05-29 12:35:00.000');

INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT103', N'CUSTOMER101', N'EMPLOYEE1', N'2022-05-12 10:12:00.000', N'Cliff hanger bad', N'2022-04-20 01:50:40.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT104', N'CUSTOMER101', N'EMPLOYEE1', N'2022-06-16 07:30:27.000', N'wrong book version', N'2022-05-25 00:30:15.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT105', N'CUSTOMER101', N'EMPLOYEE1', N'2022-06-21 13:50:43.000', N'book came damaged', N'2022-05-29 12:35:00.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT112', N'CUSTOMER101', N'EMPLOYEE1', N'2022-05-12 10:12:00.000', N'Bookstore ugly', N'2022-04-20 01:50:40.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT113', N'CUSTOMER101', N'EMPLOYEE1', N'2022-06-16 07:30:27.000', N'wrong bookstore', N'2022-05-25 00:30:15.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT114', N'CUSTOMER101', N'EMPLOYEE1', N'2022-06-21 13:50:43.000', N'bookstore not fun', N'2022-05-29 12:35:00.000');

INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT106', N'CUSTOMER102', N'EMPLOYEE2', N'2022-05-13 10:12:00.000', N'magazine is old', N'2022-04-20 01:50:40.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT107', N'CUSTOMER102', N'EMPLOYEE1', N'2022-06-17 07:30:27.000', N'wrong magazine issue', N'2022-05-25 00:30:15.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT108', N'CUSTOMER102', N'EMPLOYEE2', N'2022-06-22 13:50:43.000', N'magazine was torn', N'2022-05-29 12:35:00.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT115', N'CUSTOMER102', N'EMPLOYEE2', N'2022-05-13 10:12:00.000', N'bookstore is old', N'2022-04-20 01:50:40.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT116', N'CUSTOMER102', N'EMPLOYEE1', N'2022-06-17 07:30:27.000', N'bookstore is confusing', N'2022-05-25 00:30:15.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT117', N'CUSTOMER102', N'EMPLOYEE2', N'2022-06-22 13:50:43.000', N'bad customer service', N'2022-05-29 12:35:00.000');

INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT118', N'CUSTOMER103', N'EMPLOYEE2', N'2022-05-13 10:12:00.000', N'magazine is old', N'2022-04-20 01:50:40.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT119', N'CUSTOMER103', N'EMPLOYEE1', N'2022-06-17 07:30:27.000', N'wrong magazine issue', N'2022-05-25 00:30:15.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT120', N'CUSTOMER103', N'EMPLOYEE2', N'2022-06-22 13:50:43.000', N'magazine was torn', N'2022-05-29 12:35:00.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT121', N'CUSTOMER103', N'EMPLOYEE2', N'2022-05-13 10:12:00.000', N'bookstore is old', N'2022-04-20 01:50:40.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT122', N'CUSTOMER103', N'EMPLOYEE1', N'2022-06-17 07:30:27.000', N'bookstore is confusing', N'2022-05-25 00:30:15.000');
INSERT INTO dbo.complaints (complaintsid, cid, eid, handled_date_time, complain_text, filled_date_time) VALUES (N'COMPLAINT123', N'CUSTOMER103', N'EMPLOYEE2', N'2022-06-22 13:50:43.000', N'bad customer service', N'2022-05-29 12:35:00.000');

-- Create 9 different orders to complain on
INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER100', N'2022-04-19 00:30:12.000', N'420 Dover St', N'CUSTOMER100');
INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER101', N'2022-05-24 20:05:13.000', N'420 Dover St', N'CUSTOMER100');
INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER102', N'2022-05-28 23:50:20.000', N'420 Dover St', N'CUSTOMER100');

INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER103', N'2022-04-19 00:30:12.000', N'422 Devar St', N'CUSTOMER101');
INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER104', N'2022-05-24 20:05:13.000', N'422 Devar St', N'CUSTOMER101');
INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER105', N'2022-05-28 23:50:20.000', N'422 Devar St', N'CUSTOMER101');

INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER106', N'2022-04-19 00:30:12.000', N'320 Cover St', N'CUSTOMER102');
INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER107', N'2022-05-24 20:05:13.000', N'320 Cover St', N'CUSTOMER102');
INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER108', N'2022-05-28 23:50:20.000', N'320 Cover St', N'CUSTOMER102');

INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER109', N'2022-04-19 00:30:12.000', N'320 Flover St', N'CUSTOMER103');
INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER110', N'2022-05-24 20:05:13.000', N'320 Flover St', N'CUSTOMER103');
INSERT INTO dbo.orders (orderid, date_time, shipping_address, cid) VALUES (N'ORDER111', N'2022-05-28 23:50:20.000', N'320 Flover St', N'CUSTOMER103');

--link complaints to orders
INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT100', N'ORDER100')
INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT101', N'ORDER101')
INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT102', N'ORDER102')

INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT103', N'ORDER103')
INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT104', N'ORDER104')
INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT105', N'ORDER105')

INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT106', N'ORDER106')
INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT107', N'ORDER107')
INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT108', N'ORDER108')

INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT118', N'ORDER109')
INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT119', N'ORDER110')
INSERT INTO dbo.complaints_on_orders (complaintsid, orderid) VALUES (N'COMPLAINT120', N'ORDER111')

--link complaints to bookstores
INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT109', N'BS1')
INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT110', N'BS1')
INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT111', N'BS1')

INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT112', N'BS2')
INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT113', N'BS2')
INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT114', N'BS2')

INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT115', N'BS3')
INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT116', N'BS3')
INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT117', N'BS3')

INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT121', N'BS3')
INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT122', N'BS3')
INSERT INTO dbo.complaints_on_bookstore(complaintsid, bookstoreid) VALUES (N'COMPLAINT123', N'BS3')

-- create stock in bookstores which we sold to the complainers
INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK100', 20, 10, N'BS2', N'PUB1');
INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK101', 10, 8, N'BS1', N'PUB1');
INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK102', 60, 10, N'BS1', N'PUB2');

INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK103', 60, 10, N'BS1', N'PUB3');
INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK104', 20, 8, N'BS2', N'PUB6');
INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK105', 60, 10, N'BS1', N'PUB4');

INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK106', 80, 10, N'BS1', N'PUB10');
INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK107', 70, 8, N'BS2', N'PUB11');
INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK108', 90, 10, N'BS1', N'PUB11');

INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK109', 80, 10, N'BS1', N'PUB10');
INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK110', 70, 8, N'BS2', N'PUB11');
INSERT INTO dbo.stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid) VALUES (N'STOCK111', 90, 10, N'BS1', N'PUB11');

-- Create items in order 1 --> list of items in orders
INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM100', 25, 1, N'ORDER100', N'2022-04-19', N'STOCK100');
INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM101', 15, 1, N'ORDER101', N'2022-05-24', N'STOCK101');
INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM102', 65, 1, N'ORDER102', N'2022-05-28', N'STOCK102');

INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM103', 60, 1, N'ORDER103', N'2022-04-19', N'STOCK103');
INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM104', 27, 2, N'ORDER104', N'2022-05-24', N'STOCK104');
INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM105', 69, 1, N'ORDER105', N'2022-05-28', N'STOCK105');

INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM106', 88, 1, N'ORDER106', N'2022-04-19', N'STOCK106');
INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM107', 71, 1, N'ORDER107', N'2022-05-24', N'STOCK107');
INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM108', 93, 2, N'ORDER108', N'2022-05-28', N'STOCK108');

INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM109', 88, 1, N'ORDER109', N'2022-04-19', N'STOCK109');
INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM110', 71, 1, N'ORDER110', N'2022-05-24', N'STOCK110');
INSERT INTO dbo.items_in_orders_1 (itemid, item_price, item_qty, orderid, delivery_date, stockid) VALUES (N'ITEM111', 93, 2, N'ORDER111', N'2022-05-28', N'STOCK111');

-- Create items in order 3 --> link orderid, stockid and itemid
INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER100', N'STOCK100', N'ITEM100');
INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER101', N'STOCK101', N'ITEM101');
INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER102', N'STOCK102', N'ITEM102');

INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER103', N'STOCK103', N'ITEM103');
INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER104', N'STOCK104', N'ITEM104');
INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER105', N'STOCK105', N'ITEM105');

INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER106', N'STOCK106', N'ITEM106');
INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER107', N'STOCK107', N'ITEM107');
INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER108', N'STOCK108', N'ITEM108');

INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER109', N'STOCK109', N'ITEM109');
INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER110', N'STOCK110', N'ITEM110');
INSERT INTO dbo.items_in_orders_3 (orderid, stockid, itemid) VALUES (N'ORDER111', N'STOCK111', N'ITEM111');

-- Create items in order 4 --> link orderid and cid
INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER100', N'CUSTOMER100');
INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER101', N'CUSTOMER100');
INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER102', N'CUSTOMER100');

INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER103', N'CUSTOMER101');
INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER104', N'CUSTOMER101');
INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER105', N'CUSTOMER101');

INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER106', N'CUSTOMER102');
INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER107', N'CUSTOMER102');
INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER108', N'CUSTOMER102');

INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER109', N'CUSTOMER103');
INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER110', N'CUSTOMER103');
INSERT INTO dbo.items_in_orders_4 (orderid, cid) VALUES (N'ORDER111', N'CUSTOMER103');