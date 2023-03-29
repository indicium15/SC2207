INSERT INTO books(pubid, title) 
VALUES
    ('PUB1', 'AAA Book'),
    ('PUB2', 'Harry Porter Finale'),
    ('PUB3', 'BBB Book');
INSERT INTO magazines(pubid, title, issue) 
VALUES
    ('PUB4', 'AAA Magazine', 1),
    ('PUB5', 'BBB Magazine', 2);
    
INSERT INTO publication(pubid, publisher, year) 
VALUES
    ('PUB1', 'Nanyang Publisher Company', 2021),
    ('PUB2', 'BBB Publisher Company', 2020),
    ('PUB3', 'Nanyang Publisher Company', 2019),
    ('PUB4', 'CCC Publisher Company', 2020),
    ('PUB5', 'Nanyang Publisher Company', 2021);


INSERT INTO bookstore(bookstoreid) 
VALUES
    ('BS1'),
    ('BS2'),
    ('BS3'),
    ('BS4');

INSERT INTO stocks_in_bookstores(stockid, stock_price, stock_qty, bookstoreid, pubid) 
VALUES
    ('STOCK1', 10.0, 20, 'BS1', 'PUB1'),
    ('STOCK2', 10.0, 20, 'BS1', 'PUB2'),
    ('STOCK3', 10.0, 20, 'BS1', 'PUB3'),
    ('STOCK4', 10.0, 20, 'BS2', 'PUB2'),
    ('STOCK5', 10.0, 20, 'BS2', 'PUB4'),
    ('STOCK6', 10.0, 20, 'BS2', 'PUB5'),
    ('STOCK7', 10.0, 20, 'BS3', 'PUB3'),
    ('STOCK8', 10.0, 20, 'BS3', 'PUB1'),
    ('STOCK9', 10.0, 20, 'BS3', 'PUB5'),
    ('STOCK10', 10.0, 20, 'BS4', 'PUB2'),
    ('STOCK11', 10.0, 20, 'BS4', 'PUB3'),
    ('STOCK12', 10.0, 20, 'BS4', 'PUB5');

INSERT INTO price_history(stockid, start_date, end_date, price) 
VALUES
    ('STOCK1','2022-08-01', '2022-08-31', 20),
    ('STOCK2','2022-08-01', '2022-08-31', 18),
    ('STOCK3','2022-08-01', '2022-08-31', 17),
    ('STOCK4','2022-08-01', '2022-08-31', 20),
    ('STOCK5','2022-08-01', '2022-08-31', 18),
    ('STOCK6','2022-08-01', '2022-08-31', 21),
    ('STOCK7','2022-08-01', '2022-08-31', 20),
    ('STOCK8','2022-08-01', '2022-08-31', 18),
    ('STOCK9','2022-08-01', '2022-08-31', 20),
    ('STOCK10','2022-08-01', '2022-08-31', 19),
    ('STOCK11','2022-08-01', '2022-08-31', 21),
    ('STOCK12','2022-08-01', '2022-08-31', 18),
    ('STOCK5','2022-07-01', '2022-07-31', 18),
    ('STOCK6','2022-07-01', '2022-07-31', 19);


INSERT INTO orderstatus(itemid, status_date, state) 
VALUES
    ('ITEM1', '2022-08-01', 'delivered'),
    ('ITEM2', '2022-08-05', 'delivered'),
    ('ITEM3', '2022-08-15', 'delivered'),
    ('ITEM4', '2022-08-17', 'delivered'),
    ('ITEM5', '2022-08-18', 'delivered'),
    ('ITEM6', '2022-08-19', 'delivered'),
    ('ITEM7', '2022-08-20', 'delivered'),
    ('ITEM8', '2022-07-10', 'delivered'),
    ('ITEM9', '2022-07-10', 'delivered');

INSERT INTO items_in_orders_1(itemid, item_price, item_qty, orderid, delivery_date, stockid) 
VALUES
    ('ITEM1', NULL, 3, 'ORDER1', '2022-08-02', 'STOCK1'),
    ('ITEM2', NULL, 2, 'ORDER1', '2022-08-05', 'STOCK2'),
    ('ITEM3', NULL, 3, 'ORDER2', '2022-08-15', 'STOCK4'),
    ('ITEM4', NULL, 2, 'ORDER2', '2022-08-17', 'STOCK5'),
    ('ITEM5', NULL, 3, 'ORDER3', '2022-08-18', 'STOCK7'),
    ('ITEM6', NULL, 2, 'ORDER3', '2022-08-19', 'STOCK8'),
    ('ITEM7', NULL, 1, 'ORDER4', '2022-08-20', 'STOCK10'),
    ('ITEM8', NULL, 1, 'ORDER5', '2022-07-10', 'STOCK5'),
    ('ITEM9', NULL, 1, 'ORDER5', '2022-07-10', 'STOCK6');

INSERT INTO orders(orderid, date_time, shipping_address, cid) 
VALUES
    ('ORDER1', '2022-08-02', 'Blk 111 ABC Road', 'CUSTOMER1'),
    ('ORDER2', '2022-08-03', 'Blk 222 ABC Road', 'CUSTOMER2'),
    ('ORDER3', '2022-08-05', 'Blk 333 ABC Road', 'CUSTOMER3'),
    ('ORDER4', '2022-08-06', 'Blk 444 ABC Road', 'CUSTOMER4'),
    ('ORDER5', '2022-07-03', 'Blk 555 ABC Road', 'CUSTOMER5');

INSERT INTO customers(cid, name) 
VALUES
    ('CUSTOMER1', 'Andy'),
    ('CUSTOMER2', 'Bob'),
    ('CUSTOMER3', 'Clara'),
    ('CUSTOMER4', 'Duncan'),
    ('CUSTOMER5', 'Elly');


INSERT INTO items_in_orders_3(orderid, stockid, itemid) 
VALUES
    ('ORDER1', 'STOCK1', 'ITEM1'),
    ('ORDER1', 'STOCK2', 'ITEM2'),
    ('ORDER2', 'STOCK4', 'ITEM3'),  
    ('ORDER2', 'STOCK5', 'ITEM4'),
    ('ORDER3', 'STOCK7', 'ITEM5'),
    ('ORDER3', 'STOCK8', 'ITEM6'),
    ('ORDER4', 'STOCK10', 'ITEM7'),
    ('ORDER5', 'STOCK5', 'ITEM8'),
    ('ORDER5', 'STOCK6', 'ITEM9');



#update all item_prices in iio1, when delivery date is betwn start and end:
UPDATE items_in_orders_1 AS iio1
JOIN price_history AS ph ON iio1.stockid = ph.stockid
SET iio1.item_price = ph.price
WHERE iio1.delivery_date BETWEEN ph.start_date AND ph.end_date;


#6. Find bookstores that made the most revenue in August 2022.
SELECT
    sib.bookstoreid,
    SUM(io.item_price * io.item_qty) AS total_revenue
FROM items_in_orders_1 io
JOIN stocks_in_bookstores sib ON io.stockid = sib.stockid
WHERE MONTH(io.delivery_date) = 8 AND YEAR(io.delivery_date) = 2022
GROUP BY sib.bookstoreid
HAVING total_revenue = (
    SELECT
        MAX(total_revenue)
    FROM (
        SELECT
            sib2.bookstoreid,
            SUM(io2.item_price * io2.item_qty) AS total_revenue
        FROM items_in_orders_1 io2
        JOIN stocks_in_bookstores sib2 ON io2.stockid = sib2.stockid
        WHERE MONTH(io2.delivery_date) = 8 AND YEAR(io2.delivery_date) = 2022
        GROUP BY sib2.bookstoreid
    ) AS inner_query
);