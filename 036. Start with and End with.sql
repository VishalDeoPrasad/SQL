/*
Question: You want to get data about a customer
First Name Starts with ‘A’ and Last Name End’s
with ‘e’
*/

SELECT 
    *
FROM
    farmers_market.customer
WHERE
    customer_first_name LIKE 'A%'
        AND customer_last_name LIKE '%e'