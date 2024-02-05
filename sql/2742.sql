SELECT lr.name, round((lr.omega * 1.618),3) AS "Fator N" 
FROM life_registry lr
JOIN dimensions d ON d.id = lr.dimensions_id
WHERE (d.name = 'C875' OR d.name = 'C774')
AND lr.name LIKE 'Richard%'
order by lr.omega asc;
