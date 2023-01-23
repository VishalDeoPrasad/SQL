/*
	Add/subtract 15 days and 30 days to the start of the market date time using different date function
*/

select 
	x.market_date_time,
	date_add(x.market_date_time, interval 30 day) as date_add_30,
    date_sub(x.market_date_time, interval -30 day) as date_sub_30,
    date_add(x.market_date_time, interval 15 day) as date_add_15,
    date_sub(x.market_date_time, interval -15 day) as date_sub_30
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