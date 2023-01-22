/*
	Creation of datetime_demo table starting date time and ending date time.
*/

select 
		*,
        str_to_date(concat(market_date, " ", market_start_time), "%Y-%m-%d %h:%i %p") as market_start_date_time,
        str_to_date(concat(market_date, " ", market_end_time), "%Y-%m-%d %h:%i %p") as market_end_date_time
from market_date_info