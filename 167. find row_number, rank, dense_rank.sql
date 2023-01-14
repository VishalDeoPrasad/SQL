/*	Problem Statement:

	Write a query to calculate row number and save as 'emp_row_no', rank and save as 'emp_rank', 
    and the dense rank of employees as 'emp_dense_rank' based on the salary column in descending 
    order within each department using the employee's table.

	Return the columns 'full_name' (first_name and last_name separated by space), 'department_id', 
    'salary', 'emp_row_no', 'emp_rank', and 'emp_dense_rank'.
*/

select concat(first_name, " ", last_name) as full_name, department_id, salary,
	row_number() over (partition by department_id order by salary desc) as emp_row_no, 
    rank() over (partition by department_id order by salary desc) as emp_rank,
    dense_rank() over (partition by department_id order by salary desc) as emp_dense_rank
    
from employees