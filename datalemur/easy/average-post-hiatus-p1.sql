-- Problem: Average Post Hiatus (Part 1) (Easy)
-- https://datalemur.com/questions/sql-average-post-hiatus-1
-- First time using MIN/MAX and went through quite a bit of trial and error to solve
--  the problem, but I did it!! This one was a confidence booster for me.

SELECT
  user_id,
  (MAX(post_date)::date - MIN(post_date)::date) AS days_between_posts
FROM posts
WHERE post_date BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY user_id
HAVING COUNT(post_id) >= 2;