-- rank the pruduct in each vendor. expensive product get less rank

SELECT 
    vendor_id,
    original_price,
    row_number() over (partition by vendor_id order by original_price desc) as price_row_number, 
    rank() over (partition by vendor_id order by original_price desc) as price_rank,
    dense_rank() over (partition by vendor_id order by original_price desc) as price_dense_rank
FROM
    vendor_inventory