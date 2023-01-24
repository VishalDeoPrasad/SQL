/*
	Problem Statement:

	Use CTEs and display the 12th highest salary from the employee's table.

	Return the column 'salary'.
*/

with t as
(
	select 
		*,
        dense_rank() over (order by salary desc) as highest_salary_rank
	from employees
)

select salary from t where highest_salary_rank = 12;