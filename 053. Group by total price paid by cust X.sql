/*
calculate the total price paid py customer_id 3 on per market date.
*/
select market_date, round((sum(quantity*cost_to_customer_per_qty)), 2) as total_paid from farmers_market.customer_purchases
where customer_id = 3
group by market_date 
order by market_date