/*
	Question: Filter out vendors who brought at least 2
	items to the farmer’s market over the time period -
	2019-05-02 and 2019-05-16
*/

select vendor_id, count(distinct product_id) as item_brought_to_market from vendor_inventory
where market_date between '2019-05-02' and '2019-05-16'
group by vendor_id
having count(distinct product_id) > 1
order by vendor_id;

SELECT
vendor_id,
COUNT(DISTINCT product_id) AS different_products_offered,
SUM(quantity * original_price) AS value_of_inventory,
SUM(quantity) AS inventory_item_count,
SUM(quantity * original_price) / SUM(quantity) AS average_item_price
FROM farmers_market.vendor_inventory
WHERE market_date BETWEEN '2019-05-02' AND '2019-05-16'
GROUP BY vendor_id
HAVING inventory_item_count > 1
ORDER BY vendor_id;