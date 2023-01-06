-- List all the product along with the product category name
SELECT 
    *
FROM
    farmers_market.product LEFT JOIN farmers_market.product_category 
    ON product.product_category_id = product_category.product_category_id