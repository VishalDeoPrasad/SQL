/*
	Find the average sales on each market day. 
    We want to consider only those days
		1). where the number of purchases were more than 3 
		2). and the every single transaction amunt must be greater than 5.
*/

SELECT 
    market_date, 
    round(avg(quantity*cost_to_customer_per_qty), 2) as daily_avg_sale
FROM
    customer_purchases
-- where quantity*cost_to_customer_per_qty > 5
group by market_date
having count(*) > 3 and daily_avg_sale > 15