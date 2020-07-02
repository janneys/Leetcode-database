select email
from person
group by email
having count(email)>1
;

-- group by... having...