seleCT C.id,C.name from customers C
left join locations l on l.id_customers = C.id
where l.id_customeRS is Null
order by C.id asc;
