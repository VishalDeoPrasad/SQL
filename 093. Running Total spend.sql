/*
	Question: Calculate the running total of the cost of items purchased by each customer, 
    sorted by the date and time and the product_id.
*/

select customer_id, 
		market_date, 
        transaction_time, 
        (quantity*cost_to_customer_per_qty) as bill,
        sum(quantity*cost_to_customer_per_qty) over (partition by customer_id order by market_date, transaction_time, product_id) as running_total_bill
	
from customer_purchases
order by customer_id, market_date, transaction_time