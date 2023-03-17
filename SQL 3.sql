SELECT COUNT(DISTINCT last_name)
 FROM actor;
 
#2 To count the number of different languages in which films were originally produced, i can used the COUNT(DISTINCT ...) 
#function in SQL to count the number of distinct values in the language_id column of the film table.

SELECT COUNT(DISTINCT language_id) AS num_languages
FROM film;

#3 
#To count the number of movies that were released with a "PG-13" rating, 
# in this query, i used  select the count of all the rows in the film table where the rating column is equal to "PG-13". 
#I use the AS keyword to give the resulting count column a more descriptive name (num_movies).

SELECT COUNT(*) AS num_movies
FROM film
WHERE rating = 'PG-13';

#4
#To get the 10 longest movies from 2006, i used a combination of SELECT, FROM, WHERE, ORDER BY, and LIMIT clauses in SQL.
#In this query, i selected the title and length columns from the film table where the release_year column is equal to 2006. 
#I then ordered the resulting rows in descending order based on the length column using the ORDER BY clause. 
#Finally, i  limit the output to the top 10 rows using the LIMIT clause.

SELECT title, length
FROM film
WHERE release_year = 2006
ORDER BY length DESC
LIMIT 10;

#5
#To calculate the number of days the company has been operating, I needed to use the DATEDIFF() function in SQL. 
#The DATEDIFF() function takes two dates as arguments 
#and returns the difference between them in the specified unit (e.g., days, weeks, months, etc.).

SELECT DATEDIFF(NOW(), start_date) AS days_operating
FROM company;

#6
#To show rental information with additional columns for the month and weekday, 
#you can use the MONTH() and WEEKDAY() functions in SQL 
#to extract the month and weekday from the rental_date column of the rental table.

SELECT rental_id, rental_date, MONTH(rental_date) AS rental_month, WEEKDAY(rental_date) AS rental_weekday
FROM rental
LIMIT 20;
