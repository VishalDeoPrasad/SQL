/*
Question: Extract all the product names that are part of
product category 1
*/

SELECT 
    *
FROM
    farmers_market.product
WHERE
    product_category_id = 1