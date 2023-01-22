/*
	Q: Returns the first and last market dates from the datetime_demo
	table, calculates the difference between those two dates
*/
select
        min(x.market_date_time) as min_date_time,
        max(x.market_date_time) as max_date_time,
        datediff(max(x.market_date_time), min(x.market_date_time)) as market_lasted_for
        
from
(
	select 
		str_to_date(concat(market_date, " ", transaction_time), "%Y-%m-%d %H:%i:%s") as market_date_time
	from customer_purchases
) x