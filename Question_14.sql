# select all the rows from movies table whose imdb_rating is higher than the average rating

	select * from movies 
	where imdb_rating >  
        (select avg(imdb_rating) from movies);