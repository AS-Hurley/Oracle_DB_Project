-- Create a table for sales data analysis

create table monthly_sales_analysis (
item varchar2(30),
item_size varchar2(15),
number_sold number
);

/* Conditional multitable INSERT pivots data from the source table into the target table, transforming each column into 
an individual row */

insert all
        into monthly_sales_analysis (item, item_size, number_sold)
        values (item, 'Small', small)
        into monthly_sales_analysis (item, item_size, number_sold)
        values (item, 'Regular', regular)
        into monthly_sales_analysis (item, item_size, number_sold)
        values (item, 'Large', large)
        into monthly_sales_analysis (item, item_size, number_sold)
        values (item, 'Extra Large', extra_large)
select item, small, regular, large, extra_large 
from monthly_sales_grid;

-- Display data in the pivot table sorted by item type and size for easier analysis

select * from monthly_sales_analysis
order by item, item_size desc;       

