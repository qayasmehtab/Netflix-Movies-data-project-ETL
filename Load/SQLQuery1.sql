SELECT type, COUNT(*) AS total
FROM Netflix_Raw
GROUP BY type;


SELECT TOP 10 title, date_added
FROM Netflix_Raw
ORDER BY date_added DESC;


SELECT rating, COUNT(*) AS total
FROM Netflix_Raw
GROUP BY rating
ORDER BY COUNT(*) DESC;

SELECT type, rating, COUNT(*) AS total
FROM Netflix_Raw
GROUP BY type, rating
ORDER BY type, total DESC;


SELECT TOP 10 director, COUNT(*) AS total
FROM Netflix_Raw
GROUP BY director
ORDER BY total DESC;

SELECT TOP 10 listed_in, COUNT(*) AS total
FROM Netflix_Raw
GROUP BY listed_in
ORDER BY total DESC;


SELECT title, date_added
FROM Netflix_Raw
WHERE YEAR(date_added) = 2023
ORDER BY date_added DESC;


SELECT country, type, COUNT(*) AS total
FROM Netflix_Raw
GROUP BY country, type
ORDER BY country, total DESC;


SELECT title, duration
FROM Netflix_Raw
WHERE type = 'Movie'
ORDER BY CAST(REPLACE(duration,' min','') AS INT) DESC


SELECT MIN(release_year) AS earliest_year, MAX(release_year) AS latest_year
FROM Netflix_Raw;




