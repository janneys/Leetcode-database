select distinct a.*
from stadium a join stadium b join stadium c
on ((a.id = b.id-1 and a.id = c.id-2) or
    (c.id = a.id-1 and c.id = b.id-2) or
    (c.id = b.id-1 and c.id = a.id-2)
)
where a.people>=100 and b.people>=100 and c.people>=100
order by a.id
;

-- three conditions

select distinct t1.*
from stadium t1, stadium t2, stadium t3
where t1.people >= 100 and t2.people >= 100 and t3.people >= 100
and
(
	  (t1.id - t2.id = 1 and t1.id - t3.id = 2 and t2.id - t3.id =1)  -- t1, t2, t3
    or
    (t2.id - t1.id = 1 and t2.id - t3.id = 2 and t1.id - t3.id =1) -- t2, t1, t3
    or
    (t3.id - t2.id = 1 and t2.id - t1.id =1 and t3.id - t1.id = 2) -- t3, t2, t1
)
order by t1.id
;

select distinct s1.* from stadium as s1, stadium as s2, stadium as s3
where
    ((s1.id + 1 = s2.id and s1.id + 2 = s3.id)
    or (s1.id - 1 = s2.id and s1.id + 1 = s3.id)
    or (s1.id - 2 = s2.id and s1.id - 1 = s3.id))
    and s1.people >= 100 and s2.people >= 100 and s3.people >= 100
order by s1.id