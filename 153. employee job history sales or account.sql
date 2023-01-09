/*
	Problem Statement:

	Display the details of the employees who had job titles like 'sales' or 'Account' in the past 
*/
select * from employees;
select * from job_history;
select * from jobs;

select 
	jh.*,
    jobs.job_title
    
from job_history as jh left join jobs on jh.job_id = jobs.job_id
where job_title like "Account%"  or job_title like "sales%"
		
		