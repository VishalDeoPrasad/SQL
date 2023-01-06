/*
How many different kind of products were purchased by each customer on each market day.
*/

select market_date, customer_id, count(distinct product_id) as unique_prod from farmers_market.customer_purchases
group by market_date, customer_id
order by market_date 