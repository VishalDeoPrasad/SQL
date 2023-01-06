/*
add some customer information and vendor information to the previous table.
*/
SELECT 
	concat(c.customer_first_name, " ", c.customer_last_name),
    cp.customer_id,
    cp.vendor_id,
    v.vendor_name,
    ROUND(SUM(cp.quantity * cp.cost_to_customer_per_qty), 2) AS total_price
FROM
    farmers_market.customer_purchases as cp left join farmers_market.customer as c
    on cp.customer_id = c.customer_id 
    left join farmers_market.vendor as v 
    on v.vendor_id = cp.vendor_id

GROUP BY cp.vendor_id , cp.customer_id
