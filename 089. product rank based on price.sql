/*
	New Question: Rank the products in each vendor’s inventory.
	Expensive products get a lower rank.
*/

select *,
	dense_rank() over (partition by vendor_id order by original_price asc) as product_rank_price_based

from vendor_inventory