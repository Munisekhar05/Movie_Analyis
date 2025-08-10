#Calculate cumulative revenue per industry by release year

SELECT 
    m.industry,
    m.release_year,
    m.title,
    f.revenue,
    SUM(f.revenue) OVER (PARTITION BY m.industry ORDER BY 
    m.release_year ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) 
    AS cumulative_revenue
FROM movies m
JOIN financials f ON m.movie_id = f.movie_id;