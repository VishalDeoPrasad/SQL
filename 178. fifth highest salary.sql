/*
	Problem Statement:

	Show the details of the employees who have the 5th highest salary in each job category.

	Return the columns 'employee_id', 'first_name', 'job_id'.
	Note:

	Select MySQL 8.0 in the drop-down.
	Use the employees table.
*/

select employee_id, first_name, job_id from(
select employee_id, first_name, job_id,
	dense_rank() over (partition by job_id order by salary desc) as rank_no
from employees) x
where rank_no = 5 ;
-- ------------------------------------------------------------
select
		x.employee_id,
        x.first_name,
        x.job_id
from (
	select 
			*,
			dense_rank() over (partition by job_id order by salary desc) as salary_rank
	from employees
    ) x
where x.salary_rank = 5;