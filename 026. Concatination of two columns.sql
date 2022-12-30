/*
Question: We want to merge each customer’s name
into a single column that contains the first name, then a
space, and then the last name.
*/

select concat(customer_first_name, " ", customer_last_name) as full_name
from farmers_market.customer
limit 5