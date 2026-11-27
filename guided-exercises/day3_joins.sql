-- Guided Exercise: TrailPeak Mini Exercises - Customer Orders
-- Topic: JOIN and relationship exercises
-- Database: PostgreSQL

-- Objective: The TrailPeak sales team wants to see all  
-- customer orders, including the name of the customer 
-- who placed each order

SELECT
    customers.customer_name,
    orders.order_id,
    orders.order_date,
    orders.order_amount
FROM ORDERS
INNER JOIN customers
    ON orders.customer_id = customers.customer_id;

-- Objective: Show all TrailPeak customers, including
-- those who have never placed an order

SELECT
    customers.customer_name,
    orders.order_id,
    orders.order_date,
    orders.order_amount
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id;

-- Objective: Identify customers who have never placed an order

SELECT
    customers.customer_id,
    customers.customer_name
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL;
