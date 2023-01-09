/*
	Problem Statement:

	Display the details of the employees who had job titles like 'sales' or 'Account' in the past 
    and the min_salary is greater than or equal to 6000.

	Return the columns 'employee_id', 'department_name', 'job_id', 'job_title', 'min_salary'.
	Return the employees current information for the columns 'employee_id', 'department_name'.
	Return the employees past information for the columns 'job_id', 'job_title', 'min_salary'.
	NOTE:

	To get the min_salary refer to the jobs table.
	Refer to the job_history table to get the details of past jobs.
	An employee might have worked in multiple jobs in the past whose record will be available in job_history.
*/
-- select * from employees;
-- select * from job_history;
-- select * from jobs;
-- select * from departments;

select 
	jh.employee_id, dep.department_id, dep.department_name, jh.job_id, 
    jobs.job_title, jobs.min_salary
    
from job_history as jh left join jobs on jh.job_id = jobs.job_id left join departments as dep on jh.department_id = dep.department_id
where job_title like "Account%"  or job_title like "sales%" and min_salary >= 6000
		
		