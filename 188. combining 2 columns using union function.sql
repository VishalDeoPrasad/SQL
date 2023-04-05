/*
	Problem Statement:

	Display the employee information who works in department 80 or has a salary of more than 10000 using the union operator.

	Return all the columns from the employee's table.
	Use the employees table.
*/

with t as (select * from employees where department_id = 80),
	x as (select * from employees where salary > 10000)
select * from t 
	union 
select * from x;
