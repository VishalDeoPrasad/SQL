/*
	Problem Statement:
	Display the details of the employees who had job titles like 'sales' or 'Account' in the past and the min_salary is greater than or equal to 6000.

	Return the columns 'employee_id', 'department_name', 'job_id', 'job_title', 'min_salary'.
	Return the employees current information for the columns 'employee_id', 'department_name'.
	Return the employees past information for the columns 'job_id', 'job_title', 'min_salary'.

*/

select 
-- 	   e.employee_id, concat(e.first_name, " ", e.last_name) as Full_Name,  e.salary,
--     e.job_id as current_job_id,  j1.job_title as current_job_title,
--     e.department_id as current_dep_id, d1.department_name as current_dep_name,
--     jh.job_id as past_job_id, j2.job_title as past_job_title,
--     jh.department_id as past_dep_id, d2.department_name as past_dep_name,
--     j2.min_salary
	e.employee_id, d1.department_name, jh.job_id, j2.job_title, j2.min_salary
    
    
from employees as e 
	left join jobs as j1 on e.job_id = j1.job_id
    left join departments d1 on e.department_id = d1.department_id
    inner join job_history as jh on e.employee_id = jh.employee_id
    left join jobs as j2 on jh.job_id = j2.job_id
    left join departments as d2 on jh.department_id = d2.department_id

where j2.job_title like "account%" or j2.job_title like "sales%" and j2.min_salary >= 6000



