#print a year and how many movies were released in that year starting with latest year

   select release_year, count(*) as movies_count 
   from movies 
   group by release_year
   order by release_year desc