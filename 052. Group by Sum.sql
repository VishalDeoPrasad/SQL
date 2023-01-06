/*
Calculate the total Quantity purchased by each customer per market date.
*/
Select market_date, customer_id, sum(quantity) as total_quantity from farmers_market.customer_purchases
group by market_date, customer_id
order by market_date