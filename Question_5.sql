#how many movies were released between 2015 and 2022

   select 
        count(*)
   from movies 
   where release_year 
   between 2015 and 2022