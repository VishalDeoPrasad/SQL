/*
	Question: Let’s say you want to find out if the total
	sales on each market date are higher or lower
	than they were on the previous market date. tage as higher or lower
*/

select 
		x.market_date,
        x.current_date_sale,
        lag(x.current_date_sale, 1) over (order by market_date) as previous_date_sale,
        case 
			when x.current_date_sale > (lag(x.current_date_sale, 1) over (order by market_date)) 
             or (lag(x.current_date_sale, 1) over (order by market_date)) is null then 'higher_then_prev_date' else 'lower_then_prev_date'
        end as height_lower
from
	(
		select 
				market_date,
				sum(quantity*cost_to_customer_per_qty) as current_date_sale         
				
		from customer_purchases
		group by market_date
	)x