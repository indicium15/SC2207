CREATE TABLE publication(
    pubid INT PRIMARY KEY,
    publisher VARCHAR(50) NOT NULL,
    year INT NOT NULL,
);

CREATE TABLE books(
    pubid INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
);

CREATE TABLE magazines(
    pubid INT PRIMARY KEY,
    issue INT NOT NULL,
    title VARCHAR(50) NOT NULL,
);

CREATE TABLE employees(
    eid INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT NOT NULL,
);

CREATE TABLE bookstore(
    bookstore INT PRIMARY KEY,
);

CREATE TABLE complaints(
    complaintsid INT PRIMARY KEY,
    cid INT NOT NULL,
    eid INT NOT NULL,
    handled_date_time DATETIME NOT NULL,
    text VARCHAR(1000) NOT NULL,
    filled_date_time DATETIME NOT NULL,
);

CREATE TABLE complaints_on_bookstore(
    complaintsid INT PRIMARY KEY,
    bookstoreid INT,
);

CREATE TABLE complaints_on_orders(
    complaintsid INT PRIMARY KEY,
    orderid INT,
);

CREATE TABLE stocks_in_bookstores(
    stockid INT PRIMARY KEY,
    bookstoreid INT NOT NULL,
    stock_price FLOAT NOT NULL,
    stock_quantity INT NOT NULL,
    pubid INT NOT NULL,
);

CREATE TABLE price_history(
    bookstoreid INT NOT NULL,
    stockid INT NOT NULL,
    price FLOAT NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    PRIMARY KEY(bookstoreid, stockid, start_date, end_date),
);

CREATE TABLE items_in_orders(
    itemid INT,
    item_price FLOAT NOT NULL,
    item_qty INT NOT NULL,
    delivery_date DATETIME NOT NULL,
    orderid INT NOT NULL,
    cid INT NOT NULL,
    stockid INT NOT NULL,
    comment VARCHAR(100) NOT NULL,
    feedback_date_time DATETIME NOT NULL,
    rating FLOAT NOT NULL,
    PRIMARY KEY(itemid),
);

CREATE TABLE orderstatus(
    itemid INT NOT NULL,
    date DATETIME NOT NULL,
    status VARCHAR(10) NOT NULL CHECK (status IN('PROCESSED','SHIPPED','DELIVERED','RETURNED')),
    PRIMARY KEY(itemid, date),
);

CREATE TABLE orders(
    orderid INT PRIMARY KEY,
    date_time DATETIME NOT NULL,
    shipping_address VARCHAR(500) NOT NULL,
    cid INT NOT NULL,
);

CREATE TABLE customers(
    cid INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
);


