-- Guided Exercise: Identify customers with missing email addresses
-- Topic: CASE expressions
-- Database: PostgreSQL
-- Objective: Query for customers with NULL email values

SELECT
    customer_id,
    email
FROM customers
WHERE email IS NULL;

-- Follow-up exercise: create an email_status column
-- that indicates whether the emaill address is missing
-- or present for each customer

SELECT
    customer_id,
    email,
    CASE
        WHEN email IS NULL THEN 'Missing'
        ELSE 'Present'
    END AS email_status
FROM customers;

-- Follow-up exercise: classify an email as
-- Missing if it is either NULL or an empty string.
-- Otherwise, classify it as Present

SELECT
    customer_id,
    email,
    CASE
        WHEN email IS NULL OR email = '' THEN 'Missing'
        ELSE 'Present'
    END AS email_status
FROM customers;