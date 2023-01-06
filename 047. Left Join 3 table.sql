/*
let say we want detail about all farmers
and details about the booth 
and the booth assignment for every market day
*/

SELECT 
    *
FROM
    farmers_market.vendor_booth_assignments AS vba LEFT JOIN farmers_market.booth AS b ON vba.booth_number = b.booth_number
    left join farmers_market.vendor as v on v.vendor_id = vba.vendor_id