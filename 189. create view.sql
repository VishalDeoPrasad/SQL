/*
	Problem Statement:

	Create a view as 'emp_view' that has the details i.e, employee_id, first_name, last_name, 
    salary, department_id, department_name, location_id, street_address, and city.

	Display the details from the view of those employees who work in departments that are located in Seattle or Southlake.

	Return the view with columns 'employee_id', 'first_name', 'last_name', 'salary', 'department_id', 
    'department_name', 'location_id', 'street_address', 'city'.
*/

create view myview as (
	select
		e.employee_id, 
        e.first_name, 
        e.last_name, 
		e.salary, 
        e.department_id, 
        d.department_name, 
        l.location_id, 
        l.street_address, 
        l.city
	from employees as e 
		left join departments as d on e.department_id = d.department_id
        left join locations as l on d.location_id = l.location_id
);

select * from myview
where city in ('Seattle', 'Southlake');

