/*
Problem Statement:

Write a query to tag the department as per the count of employees working in that department.
	If the number of employees is 1 then "Junior Department"
	If the number of employees is ≤ 4 then "Intermediate Department".
	If the number of employees is > 4 then it is "Senior Department" and save the column as "Department_level."
	Save the department_id as 'Department' and count of employees as 'No_of_employees'.
	Order the output by the 'No_of_employees' and 'Department' in ascending order.
	Return the columns 'Department', 'No_of_employees', 'Department_level'.
	Use the employees table.
*/

select dep.department_id as Department, count(e.employee_id) as No_of_employees,
	case when count(e.employee_id) = 1 then "Junior Department"
		when count(e.employee_id) <= 4 then "Intermediate Department" else "Senior Department"
        end as Department_level
		
from employees as e left join departments as dep on e.department_id = dep.department_id
group by dep.department_id
order by count(e.employee_id), dep.department_id;