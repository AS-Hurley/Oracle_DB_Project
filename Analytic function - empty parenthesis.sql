/* This script operates against the HR sample schema. Analytic function is used to calculate the average salary across 
the company and compare each employee's salary to that average */

select first_name, last_name, 
salary*12 "Annual Salary",
round(salary*12 - avg(salary*12) over(), 0) "Salary Gap"
from employees
order by "Salary Gap" desc
fetch first 20 rows with ties;

