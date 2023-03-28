SELECT B.title,
    AVG(PH.price) AS average_price
FROM
    dbo.books as B
JOIN
    dbo.stocks_in_bookstores as S ON B.pubid = S.pubid
RIGHT JOIN
    dbo.price_history as PH ON S.stockid = PH.stockid
WHERE
    B.title = 'Harry Porter Finale' AND
    PH.start_date <= '2022-08-31' AND
    PH.end_date >= '2022-08-01'
GROUP BY
    B.title;

