select name, population, area
from world
where area > 3000000 or population > 25000000



SELECT name, population, area
FROM world
WHERE area > 3000000

UNION

SELECT name, population, area
FROM world
WHERE population > 25000000
;

-- UNION can be a bit faster because each select can use it's own index, while OR can use index for area and full-scan for population (or vise versa).
