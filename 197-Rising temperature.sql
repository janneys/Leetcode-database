select w1.id
from weather w1, weather w2
where datediff(w1.recorddate, w2.recorddate)=1 
    and w1.temperature > w2.temperature


SELECT
    weather.id AS 'Id'
FROM
    weather
        JOIN
    weather w ON DATEDIFF(weather.date, w.date) = 1
        AND weather.Temperature > w.Temperature
;

-- datadiff