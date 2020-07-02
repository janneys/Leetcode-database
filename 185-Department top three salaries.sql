select d.name as Department, a.name as Employee, a.Salary
from (
    select e.*, dense_rank() 
    over (partition by departmentid order by salary desc) as deptrank
    from employee e
    ) a join department d
    on a.departmentid = d.id
    where deptrank <4
;

SELECT d.Name AS 'Department', e1.Name AS 'Employee', e1.Salary
FROM Employee e1 JOIN Department d ON e1.DepartmentId = d.Id
WHERE
    3 > (
        SELECT COUNT(DISTINCT e2.Salary)
        FROM Employee e2
        WHERE e2.Salary > e1.Salary AND e1.DepartmentId = e2.DepartmentId
        )
;
--A top 3 salary in this company means there is no more than 3 salary bigger than itself in the company.
