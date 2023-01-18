/*
	Problem Statement:

	Display the employee's full name ( first name and last name separated by space) as 'full_name' of all those employees whose salary is greater than 40% of their department’s total salary.

	Return the column 'full_name'.
	Use the employees table.
*/
select concat(first_name, " ", last_name) from(
	select concat(first_name, " ", last_name) as full_name from employees as e1 
    left join (
				select department_id, sum(salary) as dep_salary
				from employees
				group by department_id
			  ) x
	on e1.department_id = x.department_id
    having x.salary > dep_salary*0.4
) x;

select concat(first_name, " ", last_name) as full_name from 
(select *,
			sum(salary) over (partition by department_id) as avg_dep_salary
	from employees)x
where salary > avg_dep_salary*0.4
