/*
	Question: Let’s say you want to find out if the total
	sales on each market date are higher or lower
	than they were on the previous market date.
*/

select 
		x.market_date,
        x.current_date_sale,
        lag(x.current_date_sale, 1) over (order by market_date) as previous_date_sale
from
	(
		select 
				market_date,
				sum(quantity*cost_to_customer_per_qty) as current_date_sale         
				
		from customer_purchases
		group by market_date
	)x