SELECT 
    c.name, 
    SUM(p.amount) 
FROM 
    categories c
JOIN 
    products p ON p.id_categories = c.id
GROUP BY 
    c.name
HAVING 
    COUNT(p.amount) > 0
ORDER BY 
    c.name ASC;
