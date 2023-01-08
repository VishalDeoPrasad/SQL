/*
Filter out vendors who brought atleast 10 quantity items to the farmer's market over the time peroid 2019-04-03 and 2019-05-16.
*/


SELECT 
    market_date, vendor_id, SUM(quantity) AS qty_for_sale
FROM
    vendor_inventory
WHERE
    market_date BETWEEN '2019-04-03' AND '2019-05-16'
GROUP BY vendor_id , market_date

