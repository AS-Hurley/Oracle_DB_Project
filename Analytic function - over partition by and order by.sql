/* This query operates against the HR sample schema. Analytic function calculates employee annual salary relative 
to the average salary within each manager's department partition. Results ordered by "Salary Gap." */

select first_name, last_name, 
salary*12 "Annual Salary",
round(salary*12 - avg(salary*12) over(partition by manager_id order by department_id), 0) "Salary Gap"
from employees
order by "Salary Gap" desc
fetch first 20 rows with ties;




