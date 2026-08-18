-- Problem: Laptop vs. Mobile Viewership (Easy)
-- https://datalemur.com/questions/laptop-mobile-viewership
-- First time using CASE WHEN but found the documentation and was able to easily follow along.

SELECT
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_reviews,
  SUM(CASE WHEN device_type IN ('phone','tablet') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership;