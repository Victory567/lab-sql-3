SELECT COUNT(DISTINCT last_name)
 FROM actor;
SELECT COUNT(DISTINCT language_id) 
FROM film;
select rating from film
where "PG-13";
select * from film
where "2006";

SELECT * from film VARCHAR_LENGTH
WHERE "2006"
LIMIT 10;
select * from rental;

SELECT DATEDIFF("2005-05-31 ", "2005-05-24");
