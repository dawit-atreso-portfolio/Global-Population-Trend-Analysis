SELECT a.continent, p.year, SUM(p.population) AS total_population
FROM countries AS a
INNER JOIN population_years AS p
ON a.id = p.country_id
WHERE a.continent = 'Africa' AND p.year = 2010
GROUP BY a.continent, p.year;
GO
