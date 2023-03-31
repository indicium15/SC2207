SELECT C.eid, E.name, AVG(DATEDIFF(hour,C.filled_date_time, C.handled_date_time)) as avg_diff
from dbo.complaints AS C JOIN dbo.employees AS E
ON C.eid = E.eid
GROUP BY C.eid, E.name
ORDER BY avg_diff ASC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

