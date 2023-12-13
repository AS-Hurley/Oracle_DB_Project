/* This script prompts the user to enter a menu item and its size, then retrieves corresponding sales data from the 
monthly_sales_analysis table using substitution variables */

prompt See how many units we sold this month by providing an item name and size
prompt
accept vName prompt "Please enter a menu item "
accept vSize prompt "Please enter item size "
select *
from monthly_sales_analysis
where item = &vName and item_size = &vSize
/
