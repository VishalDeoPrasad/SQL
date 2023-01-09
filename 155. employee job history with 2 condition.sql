/*
	Problem Statement:

	Display the details of the employees who had job titles like 'sales' or 'Account' in the past 
    and the min_salary is greater than or equal to 6000.
*/
select * from employees;
select * from job_history;
select * from jobs;

select 
	jh.*,
    jobs.*
    
from job_history as jh left join jobs on jh.job_id = jobs.job_id
where job_title like "Account%"  or job_title like "sales%" and min_salary >= 6000
		
		