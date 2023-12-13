--  Non-equijoin retrieves records from two tables based on a comparison in the ON condition

select p.first_name, p.last_name, b.bmi_category
from patients p  join bmi_criteria b     
on p.bmi between b.min_threshold and b.max_threshold;
