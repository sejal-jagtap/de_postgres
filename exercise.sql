
/* What are the 5 cheapest restaurants based on avg_cost */
SELECT name, cuisine, avg_cost
FROM restaurants
ORDER BY avg_cost ASC
LIMIT 5;

/* Which nearby restaurants (within 5 miles) are highly rated (4.0+)?*/
SELECT name, cuisine, distance_miles, rating
FROM restaurants
WHERE distance_miles <= 5 AND rating >= 4.0
ORDER BY rating DESC, distance_miles ASC;

/* restaurants within 2.0 miles*/
SELECT name, distance_miles 
FROM restaurants
WHERE distance_miles <= 2.0
ORDER BY distance_miles;

/* Top 3 based on rating */
SELECT * 
FROM restaurants
ORDER BY rating DESC
LIMIT 3;

/* Tax calculation  */
SELECT name, avg_cost, avg_cost*(1.075) as cost_with_tax
FROM restaurants;

/* How many restaurants are there per cuisine, highest count first? */
SELECT cuisine, COUNT(*) AS restaurant_count
FROM restaurants
GROUP BY cuisine
ORDER BY restaurant_count DESC;
