select p.name from products p
join 
providers pr on pr.id =p.id_providers
where p.amount > 10
and p.amount < 20
and pr.name like 'P%'