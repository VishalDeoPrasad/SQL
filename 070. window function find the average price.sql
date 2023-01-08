/*
you wnat to figure out average price per product on each market data.
*/

SELECT 
    market_date, vendor_id, original_price,
    avg(original_price) over (partition by market_date) as avg_price
FROM
    vendor_inventory
ORDER BY market_date, vendor_id

