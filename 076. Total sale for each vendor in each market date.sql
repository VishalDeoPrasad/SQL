-- Total sale for each vendor in each market date.

-- select *, round((quantity*cost_to_customer_per_qty), 2) as total_sale from customer_purchases
-- order by market_date, vendor_id;

select market_date, vendor_id, round(sum(quantity*cost_to_customer_per_qty), 2) as total_sale from customer_purchases
group by market_date, vendor_id
order by market_date;