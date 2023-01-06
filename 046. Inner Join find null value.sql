-- get all the customers who have purchases from the market yet.

select * 
from farmers_market.customer as c inner join farmers_market.customer_purchases as cp
on c.customer_id = cp.customer_id
where cp.product_id is not null