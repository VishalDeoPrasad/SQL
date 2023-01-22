/*
	Calculate the hours and minutes between the
	market start and end times on each market date.
*/
select 
	*,
	timestampdiff(hour, x.market_start_time, x.market_end_time) as hours,
    timestampdiff(minute, x.market_start_time, x.market_end_time) as minutes,
    timestampdiff(second, x.market_start_time, x.market_end_time) as seconds,
    timestampdiff(day, x.market_start_time, x.market_end_time) as days,
    timestampdiff(month, x.market_start_time, x.market_end_time) as months,
    timestampdiff(year, x.market_start_time, x.market_end_time) as years
    
from 
(
	select 
		str_to_date(concat(market_date, " ", market_start_time), "%Y-%m-%d %h:%i %p") as market_start_time,
        str_to_date(concat(market_date, " ", market_end_time), "%Y-%m-%d %h:%i %p") as market_end_time
	from market_date_info
) x