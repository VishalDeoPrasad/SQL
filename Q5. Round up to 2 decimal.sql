/*
Question: In the customer purchases, we have quantity and cost per qty separate,
query the total amount that the customer has paid along with date, customer id,
vendor_id, qty, cost per qty and the total amt and find the round off of price columns?
*/

select market_date, customer_id, vendor_id, quantity, 
        cost_to_customer_per_qty, 
        round((quantity * cost_to_customer_per_qty), 2) as total_cost
from farmers_market.dbo.customer_purchases
