/*
Get the list of customer who made purchases on each market date.
*/

SELECT 
    market_date, customer_id
FROM
    farmers_market.customer_purchases
group by market_date, customer_id