/*
In addition to the count of different products per vendor, we also
want the average original price of a product per vendor between -
2019-05-02 and 2019-05-16.
*/

SELECT DISTINCT
    market_date, vendor_id, COUNT(product_id) as items_of_the_day, round(avg(original_price), 2) as average_price
FROM
    farmers_market.vendor_inventory
WHERE
    market_date BETWEEN '2019-05-02' AND '2019-05-16'
GROUP BY market_date , vendor_id
ORDER BY market_date