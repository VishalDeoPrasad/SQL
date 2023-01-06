-- count how many products (can be duplicates) were sale on each market date.

select market_date, count(product_id) as no_of_product from customer_purchases
group by market_date
order by market_date