#Show all the movies with their language names

   SELECT m.title, l.name 
   FROM movies m 
   JOIN languages l USING (language_id)