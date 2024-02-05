select c.name,o.id 
from customers c
joiN 
ordeRS o on o.id_customers =c.id
where 
extraCT(YEAR FROM o.orders_date) = 2016
and
extract(month from o.orders_date) < 7
