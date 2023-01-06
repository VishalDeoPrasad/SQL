

select p.product_category_id, p.product_id, cp.cost_to_customer_per_qty
from farmers_market.product as p left join farmers_market.customer_purchases as cp
on p.product_id = cp.product_id
group by p.product_category_id, p.product_id, cp.cost_to_customer_per_qty