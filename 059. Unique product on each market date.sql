-- How many different unique products each vendor offered between 2019-05-02 to 2019-05-16.

select market_date, vendor_id, count(product_id) as items_to_sale from vendor_inventory
where market_date between '2019-05-02' and '2019-05-16'
group by market_date, vendor_id
order by market_date