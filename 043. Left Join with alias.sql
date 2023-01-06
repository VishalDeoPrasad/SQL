-- List all the product along with the product category name
SELECT 
    *
FROM
    farmers_market.product as p right JOIN farmers_market.product_category as pc
    ON p.product_category_id = pc.product_category_id