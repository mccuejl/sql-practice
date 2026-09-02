-- Problem: Cities With Completed Trades (Easy)
-- https://datalemur.com/questions/completed-trades
-- Getting more comfortable with Joins

SELECT 
  users.city,
  COUNT(trades.order_id) AS trade_orders_total
FROM trades
INNER JOIN users
  ON trades.user_id = users.user_id
WHERE status = 'Completed'
GROUP BY users.city
ORDER BY trade_orders_total DESC
LIMIT 3;