-- get the price of most expensive item per vendor

select vendor_id, max(original_price) from vendor_inventory
group by vendor_id