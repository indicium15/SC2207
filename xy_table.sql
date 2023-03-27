CREATE TABLE publication(
    pubid VARCHAR(50),
    publisher VARCHAR(100),
    year INT,
    PRIMARY KEY(pubid)
);
INSERT INTO publication(pubid, publisher, year) VALUES('b1', 'CCC Publisher Company','2021');
INSERT INTO publication(pubid, publisher, year) VALUES('b2', 'Nanyang Publisher Company', '2022');
INSERT INTO publication(pubid, publisher, year) VALUES('b3', 'DDD Publisher Company','2020');
INSERT INTO publication(pubid, publisher, year) VALUES('b4', 'Nanyang Publisher Company','2022');
INSERT INTO publication(pubid, publisher, year) VALUES('b5', 'EEE Publisher Company','2021');
INSERT INTO publication(pubid, publisher, year) VALUES('m1', 'Nanyang Publisher Company', '2022');
INSERT INTO publication(pubid, publisher, year) VALUES('m2', 'AAA Publisher Company', '2020');
INSERT INTO publication(pubid, publisher, year) VALUES('m3', 'Nanyang Publisher Company', '2021');
INSERT INTO publication(pubid, publisher, year) VALUES('m4', 'BBB Publisher Company', '2022');
INSERT INTO publication(pubid, publisher, year) VALUES('m5', 'Nanyang Publisher Company', '2020');

CREATE TABLE books(
    pubid VARCHAR(50),
    title VARCHAR(50),
    FOREIGN KEY(pubid) REFERENCES publication(pubid),
    PRIMARY KEY(pubid)
);
INSERT INTO books(pubid, title) VALUES('b1', 'Harry Potter 1');
INSERT INTO books(pubid, title) VALUES('b2', 'Harry Potter 2');
INSERT INTO books(pubid, title) VALUES('b3', 'Harry Potter 3');
INSERT INTO books(pubid, title) VALUES('b4', 'Harry Potter 4');
INSERT INTO books(pubid, title) VALUES('b5', 'Harry Porter Finale');

CREATE TABLE magazines(
    pubid VARCHAR(50),
    title VARCHAR(100),
    issue INT, 
    FOREIGN KEY(pubid) REFERENCES publication(pubid),
    PRIMARY KEY(pubid)
);
INSERT INTO magazines(pubid, title, issue) VALUES('m1', 'Coding Magazine', 1);
INSERT INTO magazines(pubid, title, issue) VALUES('m2', 'Design Magazine', 2);
INSERT INTO magazines(pubid, title, issue) VALUES('m3', 'Cooking Magazine', 4);
INSERT INTO magazines(pubid, title, issue) VALUES('m4', 'Fashion Magazine', 3);
INSERT INTO magazines(pubid, title, issue) VALUES('m5', 'Health Magazine', 8);

CREATE TABLE bookstore(
    bookstoreid VARCHAR(50),
    PRIMARY KEY(bookstoreid)
);
INSERT INTO bookstore(bookstoreid) VALUES('bs1');
INSERT INTO bookstore(bookstoreid) VALUES('bs2');
INSERT INTO bookstore(bookstoreid) VALUES('bs3');
INSERT INTO bookstore(bookstoreid) VALUES('bs4');
INSERT INTO bookstore(bookstoreid) VALUES('bs5');

CREATE TABLE customers(
    cid VARCHAR(50),
    name VARCHAR(100),
    PRIMARY KEY(cid)
);
INSERT INTO customers(cid, name) VALUES('c1', 'Alex');
INSERT INTO customers(cid, name) VALUES('c2', 'Ben');
INSERT INTO customers(cid, name) VALUES('c3', 'Clara');
INSERT INTO customers(cid, name) VALUES('c4', 'David');
INSERT INTO customers(cid, name) VALUES('c5','Elvin');
INSERT INTO customers(cid, name) VALUES('c6','Ford');
INSERT INTO customers(cid, name) VALUES('c7','Gary');
INSERT INTO customers(cid, name) VALUES('c8','Henry');
INSERT INTO customers(cid, name) VALUES('c9', 'Isaac');
INSERT INTO customers(cid, name) VALUES('c10','Jack');

CREATE TABLE employees(
    eid VARCHAR(50),
    name VARCHAR(100),
    salary INT, 
    PRIMARY KEY(eid)
);
INSERT INTO employees(eid, name, salary) VALUES('e1', 'Andy','2200');
INSERT INTO employees(eid, name, salary) VALUES('e2', 'Bob', '3000');
INSERT INTO employees(eid, name, salary) VALUES('e3', 'Calvin', '2800');
INSERT INTO employees(eid, name, salary) VALUES('e4', 'Devin', '2500');
INSERT INTO employees(eid, name, salary) VALUES('e5','Ezekiel','2600');
INSERT INTO employees(eid, name, salary) VALUES('e6','Felix','2500');
INSERT INTO employees(eid, name, salary) VALUES('e7','Gabriel','2000');
INSERT INTO employees(eid, name, salary) VALUES('e8','Hailey','2000');
INSERT INTO employees(eid, name, salary) VALUES('e9', 'Ivy','2400');
INSERT INTO employees(eid, name, salary) VALUES('e10','Jason', '2700');

CREATE TABLE orders(
    orderid VARCHAR(50),
    date_time DATETIME,
    shipping_address VARCHAR(500),
    cid VARCHAR(50),
    FOREIGN KEY(cid) REFERENCES customers(cid),
    PRIMARY KEY(orderid)
);
INSERT INTO orders (orderid, date_time, shipping_address, cid)
VALUES 
    ('o1', '2022-08-05 12:34:56', '123 Main St, Anytown, Singapore', 'c1'),
    ('o2', '2022-08-08 13:45:00', '456 Oak St, Anytown, Singapore', 'c2'),
    ('o3', '2022-08-10 14:23:12', '789 Elm St, Anytown, Singapore', 'c3'),
    ('o4', '2022-08-11 15:12:30', '135 Maple St, Anytown, Singapore', 'c4'),
    ('o5', '2022-08-04 16:25:45', '246 Pine St, Anytown, Singapore', 'c5'),
    ('o6', '2022-07-04 17:48:21', '369 Birch St, Anytown, Singapore', 'c6'),
    ('o7', '2022-07-15 18:35:56', '482 Cedar St, Anytown, Singapore', 'c7'),
    ('o8', '2022-07-17 19:14:33', '510 Cherry St, Anytown, Singapore', 'c8'),
    ('o9', '2022-07-18 20:27:10', '625 Willow St, Anytown, Singapore', 'c9'),
    ('o10', '2022-07-21 21:05:49', '738 Aspen St, Anytown, Singapore', 'c10'),
    ('o11', '2022-06-06 09:15:30', '845 Walnut St, Anytown, Singapore', 'c1'),
    ('o12', '2022-06-10 10:23:45', '952 Hawthorn St, Anytown, Singapore', 'c2'),
    ('o13', '2022-06-12 11:37:12', '1075 Oakwood St, Anytown, Singapore', 'c3'),
    ('o14', '2022-06-20 12:44:26', '1155 Redwood St, Anytown, Singapore', 'c4'),
    ('o15', '2022-06-15 14:12:38', '1230 Sycamore St, Anytown, Singapore', 'c5');

CREATE TABLE stocks_in_bookstores(
    stockid VARCHAR(50),
    stock_price FLOAT,
    stock_qty INT,
    bookstoreid VARCHAR(50),
    pubid VARCHAR(50),
    FOREIGN KEY(bookstoreid) REFERENCES bookstore(bookstoreid),
    FOREIGN KEY(pubid) REFERENCES publication(pubid),
    PRIMARY KEY(stockid)
);
INSERT INTO stocks_in_bookstores (stockid, stock_price, stock_qty, bookstoreid, pubid)
VALUES 
    ('s1', 15.99, 10, 'bs1', 'b5'),
    ('s2', 12.49, 15, 'bs1', 'b2'),
    ('s3', 25.99, 20, 'bs2', 'b3'),
    ('s4', 19.99, 16, 'bs2', 'b4'),
    ('s5', 9.99, 15, 'bs3', 'b5'),
    ('s6', 24.99, 12, 'bs3', 'm1'),
    ('s7', 8.49, 13, 'bs4', 'm2'),
    ('s8', 34.99, 14, 'bs4', 'm3'),
    ('s9', 29.99, 18, 'bs5', 'm4'),
    ('s10', 17.49, 16, 'bs5', 'm5'),
    ('s11', 11.99, 15, 'bs3', 'b2'),
    ('s12', 14.99, 15, 'bs4', 'b2'),
    ('s13', 27.99, 13, 'bs1', 'm1'),
    ('s14', 14.50, 14, 'bs2', 'b5');

CREATE TABLE price_history(
    stockid VARCHAR(50),
    price FLOAT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY(stockid) REFERENCES stocks_in_bookstores(stockid),
    PRIMARY KEY(stockid, start_date, end_date)
);
INSERT INTO price_history (stockid, price, start_date, end_date)
VALUES 

    #to get average for price of HPF on Amahzon
    ('s1', 14, '2022-08-01', '2022-08-31'),
    ('s5', 17, '2022-08-01', '2022-08-31'),
    ('s14', 20, '2022-08-01', '2022-08-31');
   


CREATE TABLE items_in_orders_1(
    itemid VARCHAR(50),
    item_price FLOAT,
    item_qty INT,
    orderid VARCHAR(50),
    delivery_date DATE,
    stockid VARCHAR(50),
    FOREIGN KEY(orderid) REFERENCES orders(orderid),
    FOREIGN KEY(stockid) REFERENCES stocks_in_bookstores(stockid),
    PRIMARY KEY(itemid)
);
INSERT INTO items_in_orders_1(itemid, item_price, item_qty, orderid, delivery_date, stockid)
VALUES

    #workinprogress
    ('i1', NULL, 3, 'o11', '2022-06-10', 's3' )
    ('i2', NULL, 1, 'o12', '2022-06-13', 's5')
    ('i3', NULL, 2, 'o13','2022-06-15', 's')


CREATE TABLE items_in_orders_2(
    itemid VARCHAR(50),
    comment TEXT,
    rating FLOAT,
    feedback_date_time DATETIME,
    FOREIGN KEY(itemid) REFERENCES items_in_orders_1(itemid),
    PRIMARY KEY(itemid)
);

CREATE TABLE items_in_orders_3(
    orderid VARCHAR(50),
    stockid VARCHAR(50),
    itemid VARCHAR(50),
    FOREIGN KEY(orderid) REFERENCES orders(orderid),
    FOREIGN KEY(stockid) REFERENCES stocks_in_bookstores(stockid),
    FOREIGN KEY(itemid) REFERENCES items_in_orders_1(itemid),
    PRIMARY KEY(orderid,stockid)
);

CREATE TABLE items_in_orders_4(
    orderid VARCHAR(50),
    cid VARCHAR(50),
    FOREIGN KEY(orderid) REFERENCES orders(orderid),
    FOREIGN KEY(cid) REFERENCES customers(cid),
    PRIMARY KEY(orderid)
);

CREATE TABLE orderstatus(
    itemid VARCHAR(50),
    status_date DATE,
    state CHAR(50),
    FOREIGN KEY(itemid) REFERENCES items_in_orders_1(itemid),
    PRIMARY KEY(itemid, status_date)
);


CREATE TABLE complaints(
    complaintsid VARCHAR(50),
    cid VARCHAR(50),
    eid VARCHAR(50),
    handled_date_time DATETIME,
    complain_text TEXT,
    filled_date_time DATETIME
    FOREIGN KEY(cid) REFERENCES customers(cid),
    FOREIGN KEY(eid) REFERENCES employees(eid),
    PRIMARY KEY(complaintsid)
);

CREATE TABLE complaints_on_bookstore(
    complaintsid VARCHAR(50),
    bookstoreid VARCHAR(50),
    FOREIGN KEY(complaintsid) REFERENCES complaints(complaintsid),
    FOREIGN KEY(bookstoreid) REFERENCES bookstore(bookstoreid),
    PRIMARY KEY(complaintsid)
);

CREATE TABLE complaints_on_orders(
    complaintsid VARCHAR(50),
    orderid VARCHAR(50),
    FOREIGN KEY(complaintsid) REFERENCES complaints(complaintsid),
    FOREIGN KEY(orderid) REFERENCES orders(orderid),
    PRIMARY KEY(complaintsid)
);







SELECT * FROM publication;
SELECT * FROM books;
SELECT * FROM magazines;
SELECT * FROM bookstore;
SELECT * FROM customers;
SELECT * FROM employees; 
SELECT * FROM orders;
SELECT * FROM stocks_in_bookstores;
SELECT * FROM price_history;
