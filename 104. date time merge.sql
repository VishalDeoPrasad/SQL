/*
	Creation of customer_purchases_date table by joining the Customer
	purchases and market start time, end time from market_date_info
*/

select 
        str_to_date(concat(cp.market_date, " ", mdf.market_start_time), '%Y-%m-%d %h:%i %p') as market_start_datetime,
        str_to_date(concat(cp.market_date, " ", cp.transaction_time), '%Y-%m-%d %H:%i:%s') as purchases_datetime,
		cp.customer_id,
        cp.transaction_time,
        mdf.market_start_time,
        (cp.quantity*cp.cost_to_customer_per_qty) as bill,
        product_id,
        vendor_id
from customer_purchases as cp 
	left join market_date_info as mdf on cp.market_date=mdf.market_date