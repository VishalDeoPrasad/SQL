/*
	Question: Let’s add some customer details and vendor details
	to these results. Customer details are in the customer table
	and vendor details are in the vendor table.
*/

select c.*, v.*, sum(quantity*cost_to_customer_per_qty) as total_spend
from customer_purchases cp left join customer as c on cp.customer_id=c.customer_id 
left join vendor as v on cp.vendor_id = v.vendor_id
group by customer_id, vendor_id