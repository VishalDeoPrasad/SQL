/*
	Find the average sales on each market day. 
*/

SELECT 
    market_date, round(avg(quantity*cost_to_customer_per_qty), 2) as daily_avg_sale
FROM
    customer_purchases
group by market_date