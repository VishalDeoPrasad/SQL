/*
	Problem Statement:

	Find the average salary of the employees for each department and order the departments by department_id in ascending order.
    Save the average salary as 'Average_salary'.

	Return the columns 'department_id', 'department_name', 'Average_salary'.
	Use the tables employees and departments.
*/

select distinct e.department_id, dep.department_name,
	avg(salary) over (partition by department_id order by department_id asc) as Average_salary
from employees e inner join departments dep on e.department_id = dep.department_id
