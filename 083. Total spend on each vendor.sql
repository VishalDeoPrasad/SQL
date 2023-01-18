/*
	Question: What if we wanted to find out how
	much a customer had spent at each vendor,
	regardless of date?
*/

select customer_id, vendor_id, sum(quantity*cost_to_customer_per_qty) as total_spend
from customer_purchases
group by customer_id, vendor_id