/*
	Problem Statement:

	Write a query to find the starting maximum salary of the first job that every employee held and return it as 'first_job_sal'.

	Return the columns 'first_name', 'last_name', 'first_job_sal'.
	Note:

	Select MySQL 8.0 in the drop-down.
	Refer to the job_history table to get the job details of the employees.
	Refer to the employees table for first_name and last_name.
	Refer to the jobs table for the maximum salary.
*/

select 	
		x.first_name,
        x.last_name,
        x.max_salary
from
	(
		select 
				jh.employee_id,
				jh.start_date,
				jh.end_date,
				jh.job_id as prev_job,
                j.job_title as prev_job_title,
                j.min_salary,
                j.max_salary,
				jh.department_id,
				e.first_name,
				e.last_name,
				e.hire_date,
				e.job_id as current_job,
				e.salary,
				dense_rank() over (partition by jh.employee_id order by jh.start_date asc) as jobs_count
		from job_history as jh left join employees as e on jh.employee_id = e.employee_id 
        left join jobs as j on jh.job_id = j.job_id
	) x
where x.jobs_count = 1
order by x.first_name asc