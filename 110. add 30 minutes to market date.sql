/*
	Add 30 mins to the start of the market date time.
*/
select 
	x.market_date_time,
	date_add(x.market_date_time, interval 30 minute)
from 
(
	select 
		market_date,
		market_day,
		market_start_time,
		market_end_time,
		str_to_date(concat(market_date, " ", market_start_time), "%Y-%m-%d %h:%i %p") as market_date_time
	from market_date_info
)x