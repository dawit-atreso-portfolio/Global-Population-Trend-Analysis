SELECT 
    a.continent,
    SUM(CASE WHEN p.year = 2010 THEN p.population ELSE 0 END) - 
    SUM(CASE WHEN p.year = 2000 THEN p.population ELSE 0 END) AS population_growth
FROM countries AS a
INNER JOIN population_years AS p
ON a.id = p.country_id
WHERE a.continent = 'Europe' 
AND p.year IN (2000, 2010)
GROUP BY a.continent;
