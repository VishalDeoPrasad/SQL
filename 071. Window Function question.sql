/*
As a farmer, you wnat to figure out which of your products were above the average price per 
product on each market_data.
*/

select 
	* 
from (
		SELECT 
			market_date, vendor_id, product_id, original_price,
			avg(original_price) over (partition by market_date) as avg_price
		FROM
			vendor_inventory
		ORDER BY market_date, vendor_id
	) as x
where x.original_price > x.avg_price
	
                

