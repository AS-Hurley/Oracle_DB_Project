/* This query operates against the HR sample schema. Utilises an inline view to calculate total departmental 
salaries and extracts the highest departmental total */

select to_char(max(total_dept_payroll), '$99G9999') as top_dept_payroll
from (
select sum(salary) as total_dept_payroll
from employees
group by department_id);



