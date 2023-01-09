/*
Problem Statement:
Display the details of department that is US based. 
*/

select * from departments dep inner join locations as loc
on dep.location_id = loc.location_id
where loc.country_id = 'US'