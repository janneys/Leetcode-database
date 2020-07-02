select
    (
        select distinct salary 
        from employee
        order by salary desc
        limit 1 
        offset 1
    )
    as SecondhighestSalary
;

SELECT
    IFNULL(
      (SELECT DISTINCT Salary
       FROM Employee
       ORDER BY Salary DESC
        LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary
;

-- limit & offset
-- limit n - the number of rows that will be returned.
-- offset m - skips m rows before beginning to return the rows.
-- If you use both LIMIT and OFFSET clauses the OFFSET  skips offset rows first before the LIMIT  constrains the number of rows.
-- shorter form LIMIT n, m