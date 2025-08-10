#Find top-grossing movie(s) per studio

SELECT 
    m.studio,
    m.title,
    f.revenue,
    DENSE_RANK() OVER (PARTITION BY m.studio ORDER BY f.revenue DESC) AS revenue_rank
FROM movies m
JOIN financials f ON m.movie_id = f.movie_id;