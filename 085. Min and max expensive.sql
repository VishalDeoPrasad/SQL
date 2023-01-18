/*
	Question: We want to get the most and least expensive items per product
	category, considering the fact that each vendor sets their own prices and can
	adjust prices per customer.
*/

select p.*, cp.quantity, cp.cost_to_customer_per_qty from product as p left join customer_purchases as cp
on p.product_id = cp.product_id;

select pc.product_category_name, p.product_category_id, max(original_price), min(original_price) from vendor_inventory as vi left join product as p
on vi.product_id = p.product_id left join product_category as pc on p.product_category_id = pc.product_category_id
group by product_category_id;

SELECT
pc.product_category_name,
p.product_category_id,
MIN(vi.original_price) AS minimum_price,
MAX(vi.original_price) AS maximum_price
FROM farmers_market.vendor_inventory AS vi
INNER JOIN farmers_market.product AS p
ON vi.product_id = p.product_id
INNER JOIN farmers_market.product_category AS pc
ON p.product_category_id = pc.product_category_id
GROUP BY pc.product_category_name, p.product_category_id;