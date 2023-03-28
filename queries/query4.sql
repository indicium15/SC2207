SELECT C.eid, AVG(DATEDIFF(second,C.filled_date_time, C.handled_date_time)) as avg_diff
from dbo.complaints AS C
GROUP BY C.eid
ORDER BY avg_diff ASC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;
