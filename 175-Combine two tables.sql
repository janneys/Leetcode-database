select FirstName, LastName, City, State
from Pearson p left join Address A
on p.personid = a.personid
;

-- distinguish the difference among full join, outer join, left join and right join