/* This query retrieves monthly sales analysis data for side dishes. The PIVOT operator is used to transform the data by 
pivoting on the 'item' column */

select * from monthly_sales_analysis
pivot (
sum(number_sold)
for item 
in ('French Fries', 'Onion Rings')
);