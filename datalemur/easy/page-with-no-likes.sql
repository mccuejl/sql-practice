-- Problem: Page With No Likes (Easy)
-- https://datalemur.com/questions/sql-page-with-no-likes
-- Getting the hang of Joins little by little

SELECT pages.page_id
FROM pages
LEFT JOIN page_likes
ON pages.page_id = page_likes.page_id
WHERE page_likes.page_id IS NULL 
ORDER BY page_id;