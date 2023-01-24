/*
	Problem Statement:

	Display the employee information who works in department 80 or has a salary of more than 10000 using the union operator.

	Return all the columns from the employee's table.
	Use the employees table.
*/

select * from employees where department_id = 80 
		union
select * from employees where salary > 10000 
