-- List all the product along with the product category name
SELECT 
    -- p.product_id, p.product_name, p.product_size, p.product_category_id, p.product_qty_type,
    p.*,
    pc.product_category_name
    
FROM
    farmers_market.product as p right JOIN farmers_market.product_category as pc
    ON p.product_category_id = pc.product_category_id