/*
Get the list of customer who made purchases on each market date.
*/

SELECT DISTINCT
    market_date, customer_id
FROM
    farmers_market.customer_purchases
