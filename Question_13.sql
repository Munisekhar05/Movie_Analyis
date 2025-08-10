# select all the movies with minimum and maximum release_year. Note that there 
# can be more than one movies in min and max year hence output rows can be more than 2

	select * from movies where release_year in (
        (select min(release_year) from movies),
		(select max(release_year) from movies)
	)