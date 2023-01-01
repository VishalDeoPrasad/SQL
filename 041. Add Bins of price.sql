/*
Question: Put the total cost to customer purchases into
bins of under $5.00, $5.00–19.99, or $20.00 and over
*/

SELECT 
    *,
    (quantity * cost_to_customer_per_qty) AS total_cost,
    CASE
        WHEN (quantity * cost_to_customer_per_qty) < 5 THEN 'Under $5'
        WHEN (quantity * cost_to_customer_per_qty) >= 5 AND (quantity * cost_to_customer_per_qty) < 19.99 THEN '$5 - 19.99'
        ELSE '$20.00 and over'
    END AS cost_bin
FROM
    farmers_market.customer_purchases