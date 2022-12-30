/*
Question: Return a list of customers with selected last
names - [Diaz, Edwards and Wilson].
*/

SELECT 
    *
FROM
    farmers_market.customer
WHERE
    customer_last_name IN ('Diaz' , 'Edwards', 'Wilson')