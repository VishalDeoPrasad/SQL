/*
	Problem Statement:

	Display all the country names where the average salary provided for the employees of that country is greater than 8000.

	Return the column 'country_name'.
	Use the tables employees, departments, locations, and countries.
*/

SELECT 
	c.country_name

FROM
    employees AS e left join departments as d on e.department_id = d.department_id
    left join locations as l on d.location_id = l.location_id
    left join countries as c on l.country_id = c.country_id
group by c.country_id having avg(salary) > 8000;




