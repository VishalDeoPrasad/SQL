/*
Question: Print a report of everything customer_id 4 has
ever purchased at the farmer’s market, sorted by
market date, vendor ID, and product ID.
*/

select *
from farmers_market.customer_purchases
where customer_id = 4
order by market_date, vendor_id, product_id