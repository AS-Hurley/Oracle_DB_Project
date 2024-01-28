/* This query operates against the HR sample schema. It ranks employees' tenure by hire date, avoiding duplicate rank 
values for employees hired on the same date */

select last_name || ',' || ' ' || first_name as "Employee",
department_id, hire_date, row_number() over(order by hire_date) as "Tenure"
from employees
order by "Tenure", 1;