/*
	Find where the number of purchases were more than 3 
*/

SELECT 
    market_date, count(*) as trans_count
FROM
    customer_purchases
group by market_date
having count(*) > 3
order by market_date