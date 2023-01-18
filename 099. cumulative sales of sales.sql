/*
	Q1 - Calculate the daily cumulative sales over
	the entire Sales table
*/
select 
		market_date,
		sum(quantity*cost_to_customer_per_qty) as current_date_sale,
		sum(sum(quantity*cost_to_customer_per_qty)) over (order by market_date) as cumulative_sales,
		sum(sum(quantity*cost_to_customer_per_qty)) over (order by market_date range between unbounded preceding and current row) as cumulative_sales_		
from customer_purchases
group by market_date;

select distinct
		market_date,
        sum(quantity*cost_to_customer_per_qty) over (partition by market_date) as cumulative_sales,
		sum(quantity*cost_to_customer_per_qty) over (order by market_date range between unbounded preceding and current row) as cumulative_sales_
from customer_purchases;