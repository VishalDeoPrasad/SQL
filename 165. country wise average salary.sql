/*
Problem Statement:
Display all the country names where the average salary provided for the employees of that country is greater than 8000.
Return the column 'country_name'.
Use the tables employees, departments, locations, and countries.
*/

select country_name from (

	select
			c.country_name,
			round(avg(e.salary), 2) as average_salary
	from employees as e left join departments as dep on e.department_id = dep.department_id
	left join locations as loc on dep.location_id = loc.location_id
	left join countries as c on loc.country_id = c.country_id
	group by c.country_id
	having round(avg(e.salary), 2) > 8000
) x