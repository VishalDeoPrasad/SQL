/*
	Question: how many different kinds of products
	were purchased by each customer on each market
	date.
*/

select market_date, customer_id, count(distinct product_id) as diff_prod_buy
from customer_purchases
group by market_date, customer_id;

select * from customer_purchases
order by market_date, customer_id;