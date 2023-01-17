/*
	Question: Get a list of customer IDs of customers who
	made purchases on each market date.
*/

select market_date, customer_id from customer_purchases
group by market_date, customer_id