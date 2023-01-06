-- get lowest and hightest prices within each product category.

SELECT 
    p.product_category_id,
    min(vi.original_price) as Min_Price,
    max(vi.original_price) as Max_Price
FROM
    farmers_market.vendor_inventory AS vi LEFT JOIN farmers_market.product AS p 
    ON vi.product_id = p.product_id
group by p.product_category_id