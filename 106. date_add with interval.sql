/*
	Add 30 mins to the start of the market date time
*/

select 
		*, 
        date_add(x.purchases_date_time, interval 6 second) as add_6_sec,
        date_add(x.purchases_date_time, interval 30 minute) as add_30_min,
        date_add(x.purchases_date_time, interval 1 hour) as add_60_min,
        date_add(x.purchases_date_time, interval 1 day) as add_1_day,
        date_add(x.purchases_date_time, interval 1 year) as add_1_year    
        
from
(
	select 
			str_to_date(concat(market_date, " ", transaction_time), "%Y-%m-%d %H:%i:%s") as purchases_date_time
	from customer_purchases
) x