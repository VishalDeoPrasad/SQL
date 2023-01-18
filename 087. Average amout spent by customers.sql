/*
	Question: Find the average amount spent by customers on
	each day. We want to consider only those days where the
	number of purchases were more than 3 and the transaction
	amount was greater than 5
*/

select market_date, sum(quantity*cost_to_customer_per_qty) from customer_purchases
where (quantity*cost_to_customer_per_qty) > 5
group by market_date
having count(transaction_time) > 3;

