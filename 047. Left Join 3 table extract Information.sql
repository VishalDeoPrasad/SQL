/*
let say we want detail about all farmers
and details about the booth 
and the booth assignment for every market day
*/
SELECT 
    market_date, b.booth_number, booth_price_level, booth_type, booth_description, v.vendor_id, vendor_name, 
    concat(vendor_owner_first_name, " ", vendor_owner_last_name) as Fill_name
FROM
    farmers_market.vendor_booth_assignments AS vba LEFT JOIN farmers_market.booth AS b ON vba.booth_number = b.booth_number
    left join farmers_market.vendor as v on v.vendor_id = vba.vendor_id