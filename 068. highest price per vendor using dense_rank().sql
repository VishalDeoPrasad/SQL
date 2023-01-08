-- Give me the record of heightest price per vendor.

select distinct * from(
SELECT 
    vendor_id, 
    original_price,
    dense_rank() over (partition by vendor_id order by original_price desc) as price_rank
FROM
    vendor_inventory) x
    
where price_rank = 1