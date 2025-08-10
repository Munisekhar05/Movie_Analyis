#Find the oldest actor in each movie using window functions

SELECT 
    m.title,
    a.name AS actor_name,
    a.birth_year
FROM (
    SELECT 
        ma.movie_id,
        ma.actor_id,
        a.birth_year,
        RANK() OVER (PARTITION BY ma.movie_id ORDER BY a.birth_year ASC) AS birth_rank
    FROM movie_actor ma
    JOIN actors a ON ma.actor_id = a.actor_id
) oldest
JOIN movies m ON m.movie_id = oldest.movie_id
JOIN actors a ON a.actor_id = oldest.actor_id
WHERE oldest.birth_rank = 1;