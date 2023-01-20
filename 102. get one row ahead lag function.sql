/*
	Problem Statement:

	Display the employee's details along with the previous job as 'first_job' 
    and the next promoted job as 'promoted_to' for all the employees in the company.

	Return the columns 'employee_id', 'first_name', 'last_name', 'first_job', 'promoted_to' .
	Note:
		Select MySQL 8.0 in the drop-down.
		Refer to the job_history and jobs tables to get the job details of the employees.
		Refer to the employees table for first_name and last_name.
*/


select 
		jh.employee_id,
        e.first_name,
		e.last_name,
        j.job_title as first_job,
		lead(j.job_title, 1) over (partition by jh.employee_id order by jh.start_date asc) as promoted_to 
from job_history as jh 
	left join employees as e on jh.employee_id = e.employee_id 
    left join jobs as j on jh.job_id=j.job_id
