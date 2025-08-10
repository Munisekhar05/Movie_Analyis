#Find average IMDb rating per language and compare each movie to that average

SELECT 
    m.title,
    l.name AS language,
    m.imdb_rating,
    ROUND(AVG(m.imdb_rating) OVER (PARTITION BY l.name), 2) AS avg_rating_in_language,
    m.imdb_rating - AVG(m.imdb_rating) OVER (PARTITION BY l.name) AS rating_difference
FROM movies m
JOIN languages l ON m.language_id = l.language_id;