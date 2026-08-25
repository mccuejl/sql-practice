-- Problem: Teams Power Users (Easy)
-- https://datalemur.com/questions/teams-power-users
-- This problem felt very straight forward.

SELECT sender_id, COUNT(sender_id) AS msg_count
FROM messages
WHERE sent_date BETWEEN '08-01-2022' AND '08-31-2022'
GROUP BY sender_id
ORDER BY msg_count DESC
LIMIT 2;