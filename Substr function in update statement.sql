/* This statement operates against the HR sample schema. It updates commission rates to 0.3 for employees with 'MGR' 
in the third position of their job IDs */

update employees
set commission_pct = 0.3
where substr( job_id, 4, 3) = 'MGR';

-- Roll back the transaction if you don't want permanent changes to the sample table

rollback;


