SELECT Top 10 a.name, p.year, MIN(p.population) AS min_population
FROM countries AS a
INNER JOIN population_years AS p
ON a.id = p.country_id
WHERE p.year = 2007
GROUP BY a.name, p.year
ORDER BY min_population ASC;
GO
