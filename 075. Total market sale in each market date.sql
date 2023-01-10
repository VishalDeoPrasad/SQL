-- Total Purchases happend in each market date.
select * from customer_purchases;

select market_date, round(sum(quantity*cost_to_customer_per_qty), 2) as total_market_sale from customer_purchases
group by market_date 