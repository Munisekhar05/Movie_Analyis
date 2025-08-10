#Show all Telugu movie names (assuming you don't know language
# id for Telugu)
  
   SELECT title	FROM movies m 
   LEFT JOIN languages l 
   ON m.language_id=l.language_id
   WHERE l.name="Telugu"