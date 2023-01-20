/*
    Problem Statement:

    Extract the day, month, and year from the hire_date of the employees and save the columns as 'Day', 'Month', and 'Year'. Display the extracted columns and the details of those employees who were hired in the year 2000 and in January month and also salary is greater than 5000.

    Return the columns 'employee_id', 'first_name', 'last_name', 'salary', 'hire_date', 'Day', 'Month', 'Year'.
    Use the employees table.
*/

select 
        *
from
(
    select 
        employee_id,
        first_name,
        last_name,
        salary,
        hire_date,
        day(str_to_date(hire_date, "%Y-%m-%d")) as Day, 
        month(str_to_date(hire_date, "%Y-%m-%d"))as Month, 
        year(str_to_date(hire_date, "%Y-%m-%d"))as Year
    from employees
) x
where x.Year = 2000 and x.Month = 1 and x.salary > 5000