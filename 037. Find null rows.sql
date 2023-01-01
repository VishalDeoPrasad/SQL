/*
Question: Find all of the products from the product
table without sizes.
*/

SELECT 
    *
FROM
    farmers_market.product
WHERE
    product_size is  NULL or trim(product_size) = ''