/*
	Problem Statement:

	Display the count of employees as 'No_of_Employees' and, the total salary paid to employees as 'Total_Salary' present in each department.

	Return the columns 'department_name', 'No_of_Employees', 'Total_Salary'.
	Use the employees and the departments tables.
*/

SELECT 
    dep.department_name,
    count(e.employee_id) as No_of_Employees,
    sum(e.salary) as Total_Salary
FROM
    employees AS e LEFT JOIN departments AS dep ON e.department_id = dep.department_id
group by dep.department_name;

