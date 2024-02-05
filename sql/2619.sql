select p.name, pr.name, p.price 
from products p
join 
providers pr on pr.id = p.id_providers
join 
categories c on c.id = p.id_categories 
where price > 1000
and c.name ='Super Luxury';