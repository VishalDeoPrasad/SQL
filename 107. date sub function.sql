select 
		*, 
        date_sub(x.purchases_date_time, interval 6 second) as sub_6_sec,
        date_sub(x.purchases_date_time, interval 30 minute) as sub_30_min,
        date_sub(x.purchases_date_time, interval 1 hour) as sub_60_min,
        date_sub(x.purchases_date_time, interval 1 day) as sub_1_day,
        date_sub(x.purchases_date_time, interval 1 year) as sub_1_year    
        
from
(
	select 
			str_to_date(concat(market_date, " ", transaction_time), "%Y-%m-%d %H:%i:%s") as purchases_date_time
	from customer_purchases
) x