/*
	Calculate the hours and minutes between the market start and end times on each market date.
*/

select 
	timestampdiff(hour, x.market_start_date_time, x.market_end_date_time) as market_opened_hour,
    timestampdiff(minute, x.market_start_date_time, x.market_end_date_time) as market_opened_mintue
from 
(
	select 
		market_date,
		market_day,
		market_start_time,
		market_end_time,
		str_to_date(concat(market_date, " ", market_end_time), "%Y-%m-%d %h:%i %p") as market_end_date_time, 
        str_to_date(concat(market_date, " ", market_start_time), "%Y-%m-%d %h:%i %p") as market_start_date_time
	from market_date_info
)x