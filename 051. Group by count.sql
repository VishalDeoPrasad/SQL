-- Count the number of purchases a customer per market date.

select market_date, customer_id, count(*) as total_purchases
from farmers_market.customer_purchases
group by market_date, customer_id
order by market_date, customer_id

