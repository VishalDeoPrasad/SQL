/*
	Problem Statement:

	Display the details of the employees who had worked less than a year.

	Return the columns 'employee_id', 'full_name'(first name and last name separated by space), and 'job_title'.
	Note:

	Use the tables employees, jobs, and job_history.
	To calculate the number of years employees worked take the difference between the end_date and the start_date and divide the result by 365.
	For simplicity not considering the leap year.
	Referring only to the past jobs of the employees.
	Order the output by employee_id, and job_title.
*/
select 
		x.employee_id,
        x.full_name,
        x.job_title
from
(
	select 
		e.employee_id,
		concat(e.first_name, " ", e.last_name) as full_name,
		jh.start_date,
		jh.end_date,
		datediff(jh.end_date, jh.start_date)/365 as year_serve,
		j.job_title
			
	from employees as e
		inner join job_history as jh on e.employee_id=jh.employee_id
		inner join jobs as j on jh.job_id=j.job_id
) x
where x.year_serve < 1
order by x.employee_id, x.job_title