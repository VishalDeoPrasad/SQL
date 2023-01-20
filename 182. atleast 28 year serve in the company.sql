/*
    Problem Statement:

    Display the employee's details and calculate the total no.of years the employees have been working in the company till 8th June 2022 and save it as 'Total_years'. Return the details of those employees who have been working for atleast 28 years.

    Return the columns 'employee_id', 'first_name', 'last_name', 'Total_years'.
    Note:

    Use the employees table.
    To get the "Total_years" calculate the date difference and divide the difference by 365.
*/

select 
        *
from 
(
    select 
            employee_id,
            first_name,
            last_name,
            datediff(str_to_date('2022-06-08', "%Y-%m-%d"), str_to_date(hire_date, "%Y-%m-%d"))/365 as Total_years
    from employees
) x
where x.Total_years >= 28