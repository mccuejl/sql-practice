-- Problem: LinkedIn SQL Interview Question (Easy)
-- https://datalemur.com/questions/matching-skills
-- First attempts were a bit of a struggle but it
--  came together for me faster than the last question:
--  Struggling a little bit to understand exactly what the
--  questions are asking and then applying the right logic 
--  in the right order.

SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id;