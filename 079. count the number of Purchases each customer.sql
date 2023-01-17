/*
	Question: Count the number of purchases each
	customer made per market date.
*/

select market_date, customer_id, count(*) as total_buy_eachday
from customer_purchases
group by market_date, customer_id