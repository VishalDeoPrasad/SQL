/*
Question: List down all the Product details
where product_category contains ‘Fresh’.
*/

SELECT 
    *
FROM
    farmers_market.product
WHERE
    product_category_id IN 
    (	
		SELECT 
            product_category_id
        FROM
            farmers_market.product_category
        WHERE
            product_category_name LIKE 'fresh%'
	)