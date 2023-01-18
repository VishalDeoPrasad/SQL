/*
	Question: Calculate the total price paid by
	customer_id 3 per market_date.
*/

select market_date, customer_id, sum(quantity*cost_to_customer_per_qty) as total_paid_amt
from customer_purchases
where customer_id = 3
group by market_date, customer_id
-- having customer_id = 3
order by market_date