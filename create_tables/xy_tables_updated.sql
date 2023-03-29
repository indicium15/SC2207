CREATE TABLE publication(
    pubid VARCHAR(50),
    publisher VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    PRIMARY KEY(pubid)
);


CREATE TABLE books(
    pubid VARCHAR(50),
    title VARCHAR(50) NOT NULL,
    FOREIGN KEY(pubid) REFERENCES publication(pubid),
    PRIMARY KEY(pubid)
);


CREATE TABLE magazines(
    pubid VARCHAR(50) ,
    title VARCHAR(100) NOT NULL,
    issue INT NOT NULL, 
    FOREIGN KEY(pubid) REFERENCES publication(pubid),
    PRIMARY KEY(pubid)
);


CREATE TABLE bookstore(
    bookstoreid VARCHAR(50),
    PRIMARY KEY(bookstoreid)
);


CREATE TABLE customers(
    cid VARCHAR(50),
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY(cid)
);


CREATE TABLE employees(
    eid VARCHAR(50),
    name VARCHAR(100) NOT NULL,
    salary INT NOT NULL CHECK(salary>=0), 
    PRIMARY KEY(eid)
);


CREATE TABLE orders(
    orderid VARCHAR(50),
    date_time DATETIME NOT NULL,
    shipping_address VARCHAR(500) NOT NULL,
    cid VARCHAR(50) NOT NULL,
    FOREIGN KEY(cid) REFERENCES customers(cid),
    PRIMARY KEY(orderid)
);


CREATE TABLE stocks_in_bookstores(
    stockid VARCHAR(50),
    stock_price FLOAT NOT NULL,
    stock_qty INT NOT NULL,
    bookstoreid VARCHAR(50) NOT NULL,
    pubid VARCHAR(50) NOT NULL,
    FOREIGN KEY(bookstoreid) REFERENCES bookstore(bookstoreid),
    FOREIGN KEY(pubid) REFERENCES publication(pubid),
    PRIMARY KEY(stockid)
);


CREATE TABLE price_history(
    stockid VARCHAR(50),
    price FLOAT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    FOREIGN KEY(stockid) REFERENCES stocks_in_bookstores(stockid),
    PRIMARY KEY(stockid, start_date, end_date)
);
   

CREATE TABLE items_in_orders_1(
    itemid VARCHAR(50),
    item_price FLOAT,
    item_qty INT NOT NULL,
    orderid VARCHAR(50) NOT NULL,
    delivery_date DATE,
    stockid VARCHAR(50) NOT NULL,
    FOREIGN KEY(orderid) REFERENCES orders(orderid),
    FOREIGN KEY(stockid) REFERENCES stocks_in_bookstores(stockid),
    PRIMARY KEY(itemid)
);


CREATE TABLE items_in_orders_2(
    itemid VARCHAR(50),
    comment TEXT,
    rating FLOAT,
    feedback_date_time DATETIME,
    FOREIGN KEY(itemid) REFERENCES items_in_orders_1(itemid),
    PRIMARY KEY(itemid)
);

CREATE TABLE items_in_orders_3(
    orderid VARCHAR(50) ,
    stockid VARCHAR(50) ,
    itemid VARCHAR(50) NOT NULL,
    FOREIGN KEY(orderid) REFERENCES orders(orderid),
    FOREIGN KEY(stockid) REFERENCES stocks_in_bookstores(stockid),
    FOREIGN KEY(itemid) REFERENCES items_in_orders_1(itemid),
    PRIMARY KEY(orderid,stockid)
);

CREATE TABLE items_in_orders_4(
    orderid VARCHAR(50),
    cid VARCHAR(50) NOT NULL,
    FOREIGN KEY(orderid) REFERENCES orders(orderid),
    FOREIGN KEY(cid) REFERENCES customers(cid),
    PRIMARY KEY(orderid)
);

CREATE TABLE orderstatus(
    itemid VARCHAR(50),
    status_date DATE NOT NULL,
    state CHAR(50) NOT NULL CHECK(State IN('being processed', 'shipped', 'delivered', 'returned')),
    FOREIGN KEY(itemid) REFERENCES items_in_orders_1(itemid),
    PRIMARY KEY(itemid, status_date)
);


CREATE TABLE complaints(
    complaintsid VARCHAR(50),
    cid VARCHAR(50) NOT NULL,
    eid VARCHAR(50),
    handled_date_time DATETIME NOT NULL,
    complain_text TEXT NOT NULL,
    filled_date_time DATETIME,
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




DROP TABLE publication;
DROP TABLE books;
DROP TABLE magazines;
DROP TABLE bookstore;
DROP TABLE customers;
DROP TABLE employees;
DROP TABLE orders;
DROP TABLE stocks_in_bookstores;
DROP TABLE price_history;
DROP TABLE items_in_orders_1;
DROP TABLE items_in_orders_2;
DROP TABLE items_in_orders_3;
DROP TABLE items_in_orders_4;
DROP TABLE orderstatus;
DROP TABLE complaints;
DROP TABLE complaints_on_bookstore;
DROP TABLE complaints_on_orders;

SELECT * FROM publication;
SELECT * FROM books;
SELECT * FROM magazines;
SELECT * FROM bookstore;
SELECT * FROM customers;
SELECT * FROM employees; 
SELECT * FROM orders;
SELECT * FROM stocks_in_bookstores;
SELECT * FROM price_history;
SELECT * FROM items_in_orders_1;
SELECT * FROM items_in_orders_2;
SELECT * FROM items_in_orders_3;
SELECT * FROM items_in_orders_4;
SELECT * FROM orderstatus;
SELECT * FROM complaints;
SELECT * FROM complaints_on_bookstore;
SELECT * FROM complaints_on_orders;