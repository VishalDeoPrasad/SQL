/*
	Problem Statement:

	Write a query to find all the details of those employees who earn the third-highest salary.

	Return all the columns from the employee's table.
	Use the employees table.
*/

select * from
(
	select first_name, salary, 
    dense_rank() over(order by salary desc) as rank_
    from employees
) x
where rank_=3;
