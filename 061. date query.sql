/*
Filter out vendors who brought atleast 10 quantity items to the farmer's market over the time peroid 2019-04-03 and 2019-05-16.
*/

select * from vendor_inventory
where market_date between '2019-04-03' and '2019-05-16' and
quantity >= 10
order by market_date, quantity

