/*
Question: Get all the product info for products with id
between 3 and 8 (not inclusive) and of product with id
10.*/

SELECT 
    *
FROM
    farmers_market.product
WHERE
    product_category_id > 3 AND product_category_id < 8 or product_category_id = 10