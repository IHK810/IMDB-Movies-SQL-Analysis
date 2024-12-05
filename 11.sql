/*In 11.sql, write a SQL query to list the titles of the five highest rated movies (in order) that
Chadwick Boseman starred in, starting with the highest rated.
Your query should output a table with a single column for the title of each movie.
You may assume that there is only one person in the database with the name Chadwick Boseman.*/


SELECT m.title
FROM ratings r
JOIN movies m ON m.id = r.movie_id
JOIN stars s ON s.movie_id = r.movie_id
JOIN people p ON s.person_id = p.id
WHERE p.name = 'Chadwick Boseman'
ORDER BY r.rating DESC
LIMIT 5     -- Limit the 5 as it was required to see the top 5 with the most ratings 
