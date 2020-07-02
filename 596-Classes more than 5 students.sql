select class
from (
    select class, count(distinct student) as number
    from courses
    group by class
) a
where number >= 5


SELECT
    class
FROM
    courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5
;