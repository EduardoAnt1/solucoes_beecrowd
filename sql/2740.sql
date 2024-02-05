SELECT 
    CASE 
        WHEN row_number <= 3 THEN 'Podium: ' || team
        ELSE 'Demoted: ' || team
    END AS name
FROM (
    SELECT 
        team,
        ROW_NUMBER() OVER (ORDER BY position) AS row_number
    FROM 
        league
) AS numbered_teams
WHERE 
    row_number <= 3 OR row_number > (SELECT COUNT(*) FROM league) - 2;