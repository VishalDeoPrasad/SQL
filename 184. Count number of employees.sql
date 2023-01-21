/*
	Problem Statement:

	Display the year from the hire_date as 'Year' and count the number of employees who joined in that year and save it as 'Employees_count'.

	Order the output by the Employees_count in descending order. Use the employee's table.

	Return the columns 'Year', and 'Employees_count'.
	Use employees table.
	Consider only the current jobs.
	Note:
		Use the employees table.
*/

select 
		*
from
(
	select distinct
			year(str_to_date(hire_date, "%Y-%m-%d")) as Year,
			count(employee_id) over (partition by year(str_to_date(hire_date, "%Y-%m-%d"))) as Employees_count
	from employees
) x
order by x.Employees_count desc;

select 
		x.Year ,
        count(Employees_count) as Employees_count
from
(
	select
			year(str_to_date(hire_date, "%Y-%m-%d")) as Year,
		    employee_id as Employees_count
	from employees
) x
group by x.year
order by Employees_count desc;