/*
	Problem Statement:

	Find the average salary of the employees for each department and order the departments by department_id in ascending order. 
    Save the average salary as 'Average_salary'.

	Return the columns 'department_id', 'department_name', 'Average_salary'.
	Use the tables employees and departments.
*/
select  
		x.department_id,
		x.department_name,
        avg(salary) over (partition by x.department_id order by x.department_id) as Average_salary
from (
		SELECT 
			e.employee_id, 
			e.first_name,
			e.last_name,
			e.job_id,
			e.salary,
			d.department_id,
			d.department_name,
			d.location_id
		FROM
			employees AS e LEFT JOIN departments AS d ON e.department_id = d.department_id
	) x