/*
	FOLLOWUP QUESTION OF Q093-What do you expect to happen when there is only
	a PARTITION BY clause (and no ORDER BY clause)?
*/

select *,
	sum(quantity*cost_to_customer_per_qty) over (partition by customer_id) as total_spend_by_each_customer
from customer_purchases
