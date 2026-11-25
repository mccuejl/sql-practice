-- Guided Exercise: Replace missing state values
-- Topic: CASE expressions
-- Database: PostgreSQL
-- Objective: Whenever state is NULL, add 
-- the text UNKNOWN so every customer has
-- a usable state for reporting

SELECT
    customer_id,
    state,
    CASE
        WHEN state IS NOT NULL THEN state
        ELSE 'UNKNOWN'
    END AS cleaned_state
FROM customers;

-- Same exercise as above - replace missing state
-- values, but with using COALESCE()

SELECT
    customer_id,
    state,
    COALESCE(state, 'UNKNOWN') AS cleaned_state
FROM customers;