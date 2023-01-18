/*
	Question: Using the vendor_booth_assignments table in
	the Farmer’s Market database, display each vendor’s
	booth assignment for each market_date alongside their
	previous booth assignments.
*/

select 
		market_date,
		vendor_id, 
		booth_number as current_booth,
        lag(booth_number, 1) over (partition by vendor_id order by market_date, vendor_id) as prev_booth_number
        
from vendor_booth_assignments
order by market_date, vendor_id