/*
	Problem Statement:

	Display the details of those employees who were hired between the given date '1998-01-01' and three months after from the given date.

	Return the columns 'employee_id', 'first_name', 'last_name', 'salary', 'department_name', 'hire_date', 'city'.
	Use the tables employees, departments, and locations.
*/
select 
		*
from
(
	select 
			e.employee_id,
			e.first_name,
			e.last_name,
			e.salary,
			d.department_name,
			str_to_date(e.hire_date, "%Y-%m-%d") as hire_date,
			l.city
	from employees as e 
		left join departments as d on e.department_id=d.department_id
		left join locations as l on d.location_id=l.location_id
) x
where x.hire_date between str_to_date('1998-01-01', "%Y-%m-%d") and str_to_date('1998-03-31', "%Y-%m-%d")