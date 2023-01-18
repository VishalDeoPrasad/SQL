select *,
	NTILE(10) OVER (ORDER BY x.market_date DESC) AS price_ntile

from
(
	select distinct
			market_date,
			sum(quantity*cost_to_customer_per_qty) over (partition by market_date) as cumulative_sales,
			sum(quantity*cost_to_customer_per_qty) over (order by market_date range between unbounded preceding and current row) as cumulative_sales_

	from customer_purchases
) x;
