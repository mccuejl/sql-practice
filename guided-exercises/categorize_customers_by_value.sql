-- Guided Exercise: Categorize customers by value
-- Topic: CASE expressions
-- Database: PostgreSQL
-- Objective: Categorize customers as High,
-- Medium, or Low vlaue based on total spend.

SELECT 
  customer_id,
  total_spend,
  CASE
    WHEN total_spend >= 1000 THEN 'High Value'
    WHEN total_spend >= 300 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS customer_tier
FROM customers;