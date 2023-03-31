SELECT P.pubid, COUNT(DISTINCT B.bookstoreid) as num_bookstores
FROM dbo.publication AS P
LEFT JOIN dbo.stocks_in_bookstores AS B ON P.pubid = B.pubid
WHERE P.publisher = 'Nanyang Publisher Company'
GROUP BY P.pubid
