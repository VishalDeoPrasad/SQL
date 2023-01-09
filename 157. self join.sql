/*
Problem Statement:
		Display the details of the employees who joined the company before their managers joined the company.
		Return the columns 'employee_id', 'first_name', and 'last_name'.
        */
select * from employees;
select e.employee_id, e.first_name, e.last_name, e.hire_date as emp_hire_date, em.employee_id as manger_id, em.first_name as manager_first_name, em.last_name as manger_last_name, em.hire_date
from employees as e inner join employees as em 
on e.manager_id = em.employee_id
where e.hire_date < em.hire_date