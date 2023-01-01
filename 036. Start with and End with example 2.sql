/*
Question: You want to get data about a customer First Name
start with any letter and ‘A’ in second Position and Last Name
End’s with ‘e’
*/

SELECT 
    *
FROM
    farmers_market.customer
WHERE
    customer_first_name LIKE '_A%'
        AND customer_last_name LIKE '%e'