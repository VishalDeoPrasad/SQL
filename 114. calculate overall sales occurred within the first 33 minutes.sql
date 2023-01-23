/*
	Question: Let’s say you want to calculate overall sales occurred within the first 30
	minutes after the farmer’s market opened
*/

select 
	x.market_date,
    -- sum(x.quantity*x.cost_to_customer_per_qty) over (partition by market_date) as total_sale
	sum(x.quantity*x.cost_to_customer_per_qty)
from 
(
	select 
		cp.market_date,
        cp.customer_id,
        cp.cost_to_customer_per_qty,
        cp.quantity,
        str_to_date(concat(cp.market_date, " ", mdf.market_start_time), "%Y-%m-%d %h:%i %p") as market_start_date_time,
		str_to_date(concat(cp.market_date, " ", cp.transaction_time), "%Y-%m-%d %H:%i:%s") as tran_date_time
	from customer_purchases as cp
		left join market_date_info as mdf on cp.market_date=mdf.market_date
    order by market_date 
)x
where timestampdiff(minute, x.market_start_date_time, x.tran_date_time) <= 30
group by x.market_date
order by x.market_date
