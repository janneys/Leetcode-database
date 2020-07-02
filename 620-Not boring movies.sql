select *
from cinema
where mod(id, 2) = 1 and description != 'boring'
order by rating DESC
;

--where description <> 'boring' and id%2=1 -->>135ms
--where description != 'boring' and id%2=1 -->>125ms
--where description != 'boring' and mod(id,2)=1 -->>110ms
--where description <> 'boring' and mod(id,2)=1 -->>108ms