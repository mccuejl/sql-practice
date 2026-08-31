-- Problem: Duplicate Jobe Listings (Easy)
-- https://datalemur.com/questions/duplicate-job-listings
-- Still trying to wrap my head around CTEs. They are becoming clearer
--  I am getting the concept but I still am having a hard time with them.
--  I definitely need more practice with them!

WITH duplicate_job_listings AS (
  SELECT company_id, title, description,
    COUNT(*) AS job_listing_count
FROM job_listings
GROUP BY company_id, title, description
HAVING COUNT(*) >1
)
SELECT COUNT (DISTINCT company_id) AS duplicate_companies
FROM duplicate_job_listings;