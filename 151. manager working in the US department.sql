/*
Problem Statement:
Display the details of a manager working in the department that is US based. 
*/

select manager_id from departments dep left join locations as loc
on dep.location_id = loc.location_id
where loc.country_id = 'US' and manager_id is not NULL