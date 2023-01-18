/*
	Question:The record of the highest-priced item per vendor.
*/

select * from
(
	select *,
		dense_rank() over (partition by vendor_id order by original_price) as rank_based_price
	from vendor_inventory
) x
where x.rank_based_price = 1