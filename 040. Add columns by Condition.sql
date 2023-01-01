/*
Add a column that identifies whether that day is
weekend or not. 
*/

SELECT 
    *,
    CASE
        WHEN market_day IN ('Saturday' , 'Sunday') THEN 1 ELSE 0
    END AS weekend_flag
FROM
    farmers_market.market_date_info
    
