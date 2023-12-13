/* This query operates against the HR sample schema. This nested function uses the months_between function to calculate 
the tenure of employees in months, divides the result by 12 and removes decimals to obtain the tenure in whole years */

select e.first_name, e.last_name,  trunc((months_between(jh.end_date, start_date)/12)) as "Whole Years Served"
from employees e
join 
job_history jh        on e.employee_id = jh.employee_id
where jh.end_date is not null
and  trunc((months_between(jh.end_date, start_date)/12)) > 0
order by "Whole Years Served" desc;