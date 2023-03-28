CREATE TABLE publication(
    pubid VARCHAR(50),
    publisher VARCHAR(100),
    year INT,
    PRIMARY KEY(pubid)
);

CREATE TABLE books(
    pubid VARCHAR(50),
    title VARCHAR(50),
    FOREIGN KEY(pubid) REFERENCES publication(pubid),
    PRIMARY KEY(pubid)
);

CREATE TABLE magazines(
    pubid VARCHAR(50),
    title VARCHAR(100),
    issue INT,
    FOREIGN KEY(pubid) REFERENCES publication(pubid),
    PRIMARY KEY(pubid)
);

CREATE TABLE bookstore(
    bookstoreid VARCHAR(50),
    PRIMARY KEY(bookstoreid)
);

CREATE TABLE customers(
    cid VARCHAR(50),
    name VARCHAR(100),
    PRIMARY KEY(cid)
);

CREATE TABLE employees(
    eid VARCHAR(50),
    name VARCHAR(100),
    salary INT,
    PRIMARY KEY(eid)
);

CREATE TABLE orders(
    orderid VARCHAR(50),
    date_time DATETIME,
    shipping_address VARCHAR(500),
    cid VARCHAR(50),
    FOREIGN KEY(cid) REFERENCES customers(cid),
    PRIMARY KEY(orderid)
);

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

CREATE TABLE price_history(
    stockid VARCHAR(50),
    price FLOAT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY(stockid) REFERENCES stocks_in_bookstores(stockid),
    PRIMARY KEY(stockid, start_date, end_date)
);

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

CREATE TABLE items_in_orders_2(
    itemid VARCHAR(50),
    comment VARCHAR(100),
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


