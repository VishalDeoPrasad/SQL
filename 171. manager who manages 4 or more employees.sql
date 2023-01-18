/*
	Problem Statement:

	Display the 'full_name' (first and last name separated by space) of a manager who manages 4 or more employees.

	Return the column 'full_name'.
	Use the employees table.
	The column manager_id in the employees table represents the employee_id of the manager.

*/

select 
    concat(e2.first_name, " ", e2.last_name) as full_name
from 
	employees as e inner join employees as e2 on e.manager_id = e2.employee_id
group by e2.employee_id
having count(*) >= 4;

-- ---------------------------------------------------------------------
select * from (
	select e2.*, e1.manager_id,
			count(*) over (partition by e1.manager_id) as emp_under_manager
	from employees as e1 left join employees as e2 
	on e1.manager_id = e2.employee_id
)x;

-- --------------------------------------------------------------------
select concat(first_name, ' ', last_name) as 'full_name' 
from employees where employee_id in  
(select manager_id from employees 
group by manager_id having count(*) >= 4);