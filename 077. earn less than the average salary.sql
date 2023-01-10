/*
	Problem Statement:
	Find the details of the employees who earn less than the average salary in their respective departments.
	Return the columns 'employee_id', 'first_name', 'last_name', 'department_id', 'salary'.
	Use the employees table.
*/

select x.employee_id, x.first_name, x.last_name, x.department_id, x.salary from 
(
select e.employee_id, e.first_name, e.last_name, e.department_id, e.salary, das.dep_avg_salary
from employees as e left join 
	(select department_id, round(avg(salary), 2) as dep_avg_salary from employees
	group by department_id) as das 
    on e.department_id = das.department_id
    having e.salary < das.dep_avg_salary

) x


