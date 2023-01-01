/*
Question: Analyze purchases made at the farmer’s
market on days when it rained.
*/

SELECT 
    *
FROM
    farmers_market.customer_purchases
WHERE
    market_date IN 
    (	
		SELECT 
            market_date
        FROM
            farmers_market.market_date_info
        WHERE
            market_rain_flag = 1
	)