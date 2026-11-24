-- Guided Exercise: TrailPeak Mini Exercise - Customer Status
-- Topic: CASE expressions
-- Database: PostgreSQL
-- Objective: Customer information has been collected 
-- from different systems and the customer status is not 
-- consistent across the different systems. The objective
-- is to standardize the values so downstream reporting
-- systems see only three possible statuses - Active, 
-- Inactive, or Unknown

SELECT 
    customer_id,
    customer_status,
    CASE
        WHEN LOWER(customer_status) IN ('a', 'active', 'current') THEN 'ACTIVE'
        WHEN LOWER(customer_status) IN ('i', 'inactive') THEN 'INACTIVE'
        ELSE 'UNKNOWN'
    END AS standardized_status
FROM customers;