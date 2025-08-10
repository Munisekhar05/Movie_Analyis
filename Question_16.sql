#Rank movies by IMDb rating within each industry


SELECT 
    m.title,
    m.industry,
    m.imdb_rating,
    Dense_rank() OVER (PARTITION BY m.industry ORDER BY m.imdb_rating DESC) AS rank_in_industry
FROM movies m;