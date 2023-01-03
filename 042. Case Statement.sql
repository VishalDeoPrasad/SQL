/*
find out which vendors primarily sell fresh produce and which don't and name them as
'fresh producer' and 'others'.
*/
SELECT 
    *,
    case when vendor_type like 'fresh%' then 'Fresh Producers' else 'other'
    end as Proudct_type
FROM
    farmers_market.vendor
