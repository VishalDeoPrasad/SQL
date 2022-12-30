/*
Question: If you wanted to find out what booths vendor 1 was
assigned to on or before (less than or equal to) April 20, 2019.
*/

SELECT 
    *
FROM
    farmers_market.vendor_booth_assignments
WHERE
    vendor_id = 1
        AND market_date <= '2019-04-20'