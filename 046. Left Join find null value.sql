-- get all the customers who have nothing purchases from the market yet.

select * 
from farmers_market.customer as c left join farmers_market.customer_purchases as cp
on c.customer_id = cp.customer_id
where cp.product_id is null