-- These statements operate against the HR sample schema. I have created a copy of the EMPLOYEES table for this purpose

-- Add a column to the copy table to host employees' salary status

alter table employees_copy
add SALARY_STATUS varchar2(15);

-- Update salary status for the highest and lowest earners in the employees_copy table using scalar subqueries

update employees_copy
set salary_status = 'High Earner'
where salary = (select max(salary)
                              from employees_copy);
update employees_copy                             
set salary_status = 'Low Earner'
where salary = (select min(salary)
                              from employees_copy);
                              
                            
                              

                              
                             
                                                            
