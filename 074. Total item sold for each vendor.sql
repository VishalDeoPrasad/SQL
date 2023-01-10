-- Total item sale for each vendor in each market date.

-- select * from customer_purchases
-- order by market_date;

select market_date, vendor_id, count(*) total_item_sold from customer_purchases
group by market_date, vendor_id
order by market_date, vendor_id