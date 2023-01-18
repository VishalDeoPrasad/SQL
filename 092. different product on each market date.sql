/*
	Question: Count how many different products
	each vendor brought to market on each date and
	display that count on each row. 
*/
SELECT 
    market_date, vendor_id, COUNT(*) AS no_of_items
FROM
    vendor_inventory
GROUP BY market_date , vendor_id
ORDER BY market_date , vendor_id;

SELECT
	vendor_id,
	market_date,
	product_id,
	original_price,
	COUNT(product_id) OVER (PARTITION BY market_date, vendor_id) as product_count_per_vendor_market_date
FROM farmers_market.vendor_inventory
ORDER BY vendor_id, market_date, original_price DESC;

