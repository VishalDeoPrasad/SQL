/*
	XX- Question: The Market manager may want to filter these
	query results to a specific market date to determine which
	vendors are new or changing booths that day, so we can
	contact them and ensure setup goes smoothly.
*/

select * from 
(
	select 
			market_date,
			vendor_id, 
			booth_number as current_booth,
			lag(booth_number, 1) over (partition by vendor_id order by market_date, vendor_id) as prev_booth_number
			
	from vendor_booth_assignments
	order by market_date, vendor_id
) x
where x.current_booth <> x.prev_booth_number or x.prev_booth_number is NULL
