select c.name as Customers
from Customers c left join Orders o
on c.id = o.customerid
where o.customerid is null


select customers.name as 'Customers'
from customers
where customers.id not in
(
    select customerid from orders
);

-- how to deal with null value