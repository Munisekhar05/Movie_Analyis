Movie Analysis 
📂 Dataset Structure

The file movies-db-1.contains 5 tables:

1. movies

Column Name	: Description

movie_id	    :Unique ID for each movie
title	        :Movie title
industry	    :Industry (Bollywood, Hollywood, etc.)
release_year	:Year of release
imdb_rating	  :IMDb rating of the movie
studio	      :Studio/production house name
language_id   :Reference to the languages table



---

2. financials

Column Name	: Description

movie_id	: Foreign key linking to movies
budget	  :  Production budget
revenue   :	Revenue generated
unit	    : Revenue unit (Millions, Billions)
currency	:  Currency type (USD, INR, etc.)

---

3. actors

Column Name	: Description

actor_id	 :  Unique ID for each actor
name	     :   Actor’s full name
birth_year :  Year of birth

---

4. movie_actor

Column Name :	Description

movie_id	: Foreign key linking to movies
actor_id	: Foreign key linking to actors

---

5. languages

Column Name	: Description

language_id	: Unique ID for language
name	      : Language name


How to Use

1. Import the dataset into your SQL database (MySQL, PostgreSQL, SQL Server, etc.).

2. Create tables using the provided structure.

3. Run advanced SQL queries to practice analytical skills.

4.  Author

Chinthala Munisekhar – Data Analyst | SQL & Power BI Enthusiast
Mail : munisekhar0503@outlook.com
