/*
	Problem Statement:

	Display all the details of those departments where the salary of any employee in that department is at least 9000.

	Return all the columns from the departments.
	Use the employees and the departments table.
*/

SELECT 
    d.*
FROM
    employees AS e LEFT JOIN departments AS d ON e.department_id = d.department_id
group by e.department_id having min(e.salary) > 9000;

