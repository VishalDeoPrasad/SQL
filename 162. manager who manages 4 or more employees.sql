/*
Problem Statement:
Display the 'full_name' (first and last name separated by space) of a manager who manages 4 or more employees.

Return the column 'full_name'.
Use the employees table.
The column manager_id in the employees table represents the employee_id of the manager.
*/
    
select 
	e2.employee_id as manager_id, e2.first_name as manager_first_name, e2.last_name as manager_last_name,
    e.employee_id, e.first_name as emp_first_name, e.last_name as emp_last_name
from 
	employees as e inner join employees as e2 on e.manager_id = e2.employee_id
order by e2.employee_id;

   
select 
	-- e2.employee_id as manager_id, count(*)
    concat(e2.first_name, " ", e2.last_name) as full_name
    -- e2.first_name as manager_first_name, e2.last_name as manager_last_name,
    -- e.employee_id, e.first_name as emp_first_name, e.last_name as emp_last_name
from 
	employees as e inner join employees as e2 on e.manager_id = e2.employee_id
group by e2.employee_id
having count(*) >= 4

    