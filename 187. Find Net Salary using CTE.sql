/*
	Problem Statement:

	Calculate the net salary for the employees and save the column as 'Net_salary' 
    and display the details of those employees whose net salary is greater than 15000.
	Use the CTE method.

	Note: To calculate the 'Net_salary' = salary + salary *(comission_pct).

	If the column 'comission_pct' consists of null values replace them with zeros using the ifnull() function.

	For example: ifnull(comission_pct,0).

	Return the columns 'employee_id', 'first_name', 'last_name', 'salary', and 'Net_Salary'.
	Use the employees table.
*/
with t as 
(
	select 
		employee_id,
        first_name,
        last_name,
        salary,
        salary + (salary * ifnull(commission_pct, 0)) as Net_Salary
    from employees
)
select * from t where Net_Salary > 15000;