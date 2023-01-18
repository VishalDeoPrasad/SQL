/*
	Question: Get the price of the most expensive item per vendor?
*/

-- select distinct *,
-- 		max(original_price) over (partition by vendor_id) as max_price
--  from vendor_inventory

select vendor_id,
		max(original_price) as expensive_product

from vendor_inventory
group by vendor_id