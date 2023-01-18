/*
	Question: As a farmer, you want to figure out
	which of the products were above the average
	price on each market date?
*/

select market_date, 
		avg(original_price) as avg_price
from vendor_inventory
group by market_date
order by market_date;


select * from 
(
	select *,
		avg(original_price) over (partition by market_date) as avg_price_per_market
	from vendor_inventory
) x
where x.original_price > x.avg_price_per_market

