/*
	Q3 - Calculate the moving average on a
	window frame of 1 preceding and 1 following.
*/

select *,
		sum(cumulative_sales) over (order by market_date rows between 1 preceding and 1 following) as preced_follow_1_avg_sales
from
(
	select distinct
			market_date,
			sum(quantity*cost_to_customer_per_qty) over (partition by market_date) as cumulative_sales,
			sum(quantity*cost_to_customer_per_qty) over (order by market_date range between unbounded preceding and current row) as cumulative_sales_

	from customer_purchases
) x;
