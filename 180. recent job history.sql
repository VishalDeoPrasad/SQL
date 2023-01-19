/*
	Problem Statement:

	Write a Query to find the first day of the most recent job of every employee and return it as the 'recent_job'.

	Return the columns 'first_name', and 'recent_job'.
	Note:

	Select MySQL 8.0 in the drop-down.
	Refer to the job_history table to get the job details of the employees.
	Refer to the employees table for the first_name.
	Return the output ordered by first_name in ascending order
*/

select 
		x.first_name,
        x.start_date
from
	(
		select 
				jh.employee_id,
				jh.start_date,
				jh.end_date,
				jh.job_id as previous_job,
				jh.department_id,
				e.first_name,
				e.last_name,
				e.hire_date,
				e.job_id as current_job,
				e.salary,
				dense_rank() over (partition by jh.employee_id order by jh.start_date asc) as jobs_count
		from job_history as jh left join employees as e on jh.employee_id = e.employee_id
	) x
where x.jobs_count = 1
order by x.first_name asc