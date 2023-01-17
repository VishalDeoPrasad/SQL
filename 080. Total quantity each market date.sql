/*
	Question: Calculate the total quantity that each
	customer bought per market date.
*/

select market_date, customer_id, sum(quantity) as total_qty_eachday
from customer_purchases
group by market_date, customer_id