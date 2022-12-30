/*
Question: Find the booth assignments for vendor 7 for any
market date that occurred between April 3, 2019, and May 16,
2019, including either of the two dates.
*/

SELECT 
    *
FROM
    farmers_market.vendor_booth_assignments
WHERE
    vendor_id = 7 AND market_date BETWEEN '2019-04-03' AND '2019-05-16'
ORDER BY market_date