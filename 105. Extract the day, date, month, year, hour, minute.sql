/*
	Question: From each market_start_datetime, extract the following:
	● day of week,
	● month of year,
	● year,
	● hour and
	● minute from the timestamp
*/

select 
		*,
		extract(day from purchases_date_time) as day,
		extract(month from purchases_date_time) as month,
        extract(year from purchases_date_time) as year,
        extract(hour from purchases_date_time) as hour,
        extract(minute from purchases_date_time) as minute,
        extract(second from purchases_date_time) as second,
        extract(week from purchases_date_time) as week,
        date(purchases_date_time) as date,
        time(purchases_date_time) as time
        
from
(
	select 
			str_to_date(concat(market_date, " ", transaction_time), "%Y-%m-%d %H:%i:%s") as purchases_date_time
	from customer_purchases
) x