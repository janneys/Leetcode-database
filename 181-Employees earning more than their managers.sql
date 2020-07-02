select E.Name as Employee
from Employee E
join Employee as M
on E.ManagerId = M.id
where E.Salary > M.Salary

-- conditional table join