SELECT 
    name,
    CAST(EXTRACT(DAY FROM payday) AS INTEGER) AS day
FROM 
    loan;
