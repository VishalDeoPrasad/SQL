/*
Problem Statement:
Display the details of those employees who have a manager working in the department that is US based. 
Also, display the output in ascending order of their 'employee_id'.

Return the columns 'employee_id, 'first_name', 'last_name'.
manager_id column represents the employee_id of the manager.
*/
select employee_id, first_name, last_name
from employees
where manager_id in 
	(
	select manager_id from departments dep left join locations as loc
	on dep.location_id = loc.location_id
	where loc.country_id = 'US' and manager_id is not NULL
    )
order by employee_id asc