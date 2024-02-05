SELECT CONCAT(SUBSTRING(np.cpf FROM 1 FOR 3), '.', SUBSTRING(np.cpf FROM 4 FOR 3), '.', SUBSTRING(np.cpf FROM 7 FOR 3), '-', SUBSTRING(np.cpf FROM 10 FOR 2))
FROM customers c 
join 
natural_person np on np.id_customers = c.id