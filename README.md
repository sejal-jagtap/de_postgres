# de_postgres

### Python SQL query execution in PostgreSQL database:

Query 1: What are the 5 cheapest restaurants based on avg_cost?
     
      SELECT name, cuisine, avg_cost
      FROM restaurants
      ORDER BY avg_cost ASC
      LIMIT 5;

Result:

<img width="427" height="258" alt="image" src="https://github.com/user-attachments/assets/ddbe1585-e7a1-4df8-8a95-b86fa6b274e2" />

Query 2: Which nearby restaurants (within 5 miles) are highly rated (4.0+)?

      SELECT name, cuisine, distance_miles, rating
      FROM restaurants
      WHERE distance_miles <= 5 AND rating >= 4.0
      ORDER BY rating DESC, distance_miles ASC;

Result:

<img width="562" height="295" alt="image" src="https://github.com/user-attachments/assets/8153028c-1909-4f67-8608-9b7ab2decb32" />

Query 3: Restaurants within 2.0 miles?

      SELECT name, distance_miles 
      FROM restaurants
      WHERE distance_miles <= 2.0
      ORDER BY distance_miles;

Result:

<img width="340" height="211" alt="image" src="https://github.com/user-attachments/assets/255e0a14-52fd-45f4-b495-725b931afce3" />


Query 4: Top 3 restaurants based on rating 

      SELECT * 
      FROM restaurants
      ORDER BY rating DESC
      LIMIT 3;

Result:

<img width="967" height="289" alt="image" src="https://github.com/user-attachments/assets/ac64dcb3-7409-4498-9f81-f0efc19a0042" />

Query 5: List name, avg_cost, and cost with 7.5% tax as cost_with_tax

      SELECT name, avg_cost, avg_cost*(1.075) as cost_with_tax
      FROM restaurants;

  Result:

  <img width="424" height="292" alt="image" src="https://github.com/user-attachments/assets/7d80a76b-24b0-4c19-af3e-311534eae315" />

  Query 6: How many restaurants are there per cuisine, listed in order of highest count?

        SELECT cuisine, COUNT(*) AS restaurant_count
        FROM restaurants
        GROUP BY cuisine
        ORDER BY restaurant_count DESC;

  Result:

  <img width="348" height="253" alt="image" src="https://github.com/user-attachments/assets/76cc63d1-9979-462e-8ef9-8df23d283b8c" />











#### Note: Queries have also been added to the exercise.sql file.






