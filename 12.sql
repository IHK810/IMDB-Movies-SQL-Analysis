/*In 12.sql, write a SQL query to list the titles of all movies in which both Johnny Depp and
Helena Bonham Carter starred.
Your query should output a table with a single column for the title of each movie.
You may assume that there is only one person in the database with the name Johnny Depp.
You may assume that there is only one person in the database with the name Helena Bonham Carter.*/
SELECT t2.Title
FROM
    (SELECT m.title Title                -- First sub query filters those movies which have Depp
    FROM movies m
    JOIN stars s ON s.movie_id = m.id
    JOIN people p ON p.id = s.person_id
    WHERE p.name = 'Johnny Depp') t1
JOIN (SELECT m.title Title               -- Senond sub query filters the movies having Helena
    FROM movies m
    JOIN stars s ON s.movie_id = m.id
    JOIN people p ON p.id = s.person_id
    WHERE p.name = 'Helena Bonham Carter') t2
    ON t1.Title = t2.Title


