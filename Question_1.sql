#Print all movies that have Avenger in their Name  

select title ,release_year 
       from movies 
       where studio = "Marvel studios";