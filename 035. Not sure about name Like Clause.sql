/*
Question: You want to get data about a customer you
knew as “Jerry,” but you aren’t sure if he was listed in
the database as “Jerry” or “Jeremy” or “Jeremiah.”
*/

SELECT 
    *
FROM
    farmers_market.customer
WHERE
    customer_first_name LIKE 'Jer%'