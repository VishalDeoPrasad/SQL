-- Total sale in each market date

-- select * from customer_purchases
-- order by market_date;

select market_date, count(*) as purchases_count from customer_purchases
group by market_date
order by market_date