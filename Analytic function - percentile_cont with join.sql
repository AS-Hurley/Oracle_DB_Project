-- This query operates against the HR sample schema. Analytic function returns the median salary per department

select d.department_name, 
percentile_cont(0.5) 
                            within group (order by e.salary)
                            over(partition by e.department_id) as "Median_dept_salary"
from departments d   join  employees e              on d.department_id = e.department_id
order by d.department_id;
                                    