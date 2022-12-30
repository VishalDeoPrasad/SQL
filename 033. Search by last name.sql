/*
Question: Return a list of customers with selected last
names - [Diaz, Edwards and Wilson].
*/

SELECT 
    *
FROM
    farmers_market.customer
WHERE
    customer_last_name = 'Diaz' OR customer_last_name = 'Edwards' OR customer_last_name = 'Wilson'