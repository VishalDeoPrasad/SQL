/*
What if we want to find out how much customer_id 3 had spend on each vender, regardless of date?
*/

select customer_id, vendor_id, round(sum(quantity*cost_to_customer_per_qty), 2) as total_price from farmers_market.customer_purchases
where customer_id = 3
group by vendor_id, customer_id
order by customer_id
