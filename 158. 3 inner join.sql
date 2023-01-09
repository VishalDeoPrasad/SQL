/*
Display the details of those employees who have a manager working in the department that is US based. Also, display the output in ascending order of their 'employee_id'.

Return the columns 'employee_id, 'first_name', 'last_name'.
manager_id column represents the employee_id of the manager.
*/


select e.employee_id, e.first_name, e.last_name --  , e.hire_date as emp_hire_date, e.department_id,
-- em.employee_id as manger_id, em.first_name as manager_first_name, em.last_name as manger_last_name, em.hire_date, em.department_id,
-- dep.department_name, dep.location_id,
-- loc.country_id
from employees as e inner join employees as em on e.manager_id = em.employee_id 
inner join departments as dep on em.department_id = dep.department_id inner join locations as loc on dep.location_id = loc.location_id
where loc.country_id = 'US'
order by employee_id asc
