/*
	count how many different products each vendor brought to market on each date 
	and display that count on each row.
*/

SELECT 
    *,
    count(*) over (partition by market_date) as total_item_to_sale
FROM
    vendor_inventory