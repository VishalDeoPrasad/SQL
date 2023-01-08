/*
As a farmer, you want to figure out average price of all the product on each market data.
*/

SELECT 
    market_date, vendor_id, count(market_date) as item_for_sale, round(avg(original_price), 2) as avg_price
FROM
    vendor_inventory
group by market_date, vendor_id
ORDER BY market_date , vendor_id
