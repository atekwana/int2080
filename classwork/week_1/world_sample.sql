USE world;

# returns the 10 most populous countries
SELECT Name, Continent, Population FROM country ORDER BY Population DESC LIMIT 10;

# listing the top 5 largest cities in asia by population
SELECT Name AS city, countrycode, population
FROM city
WHERE CountryCode IN (
	SELECT code FROM country WHERE continent = "asia"
)
ORDER BY Population DESC
LIMIT 5;


