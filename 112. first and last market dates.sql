/*
	Returns the first and last market dates from the datetime_demo
	table, calculates the difference between those two dates
*/
select 
		min(market_date) as start_market,
        max(market_date) as end_market,
        datediff(max(market_date), min(market_date)) as market_lasted_for
from market_date_info