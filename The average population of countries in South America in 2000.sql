SELECT a.continent, p.year, AVG(p.population) AS avg_population
FROM countries AS a
INNER JOIN population_years AS p
ON a.id = p.country_id  -- assuming `country_id` is the joining column
WHERE a.continent = 'South America' AND p.year = 2000
GROUP BY a.continent, p.year
ORDER BY avg_population;
GO
