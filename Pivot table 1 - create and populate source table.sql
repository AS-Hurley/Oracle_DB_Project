-- Create a table to host monthly sales data

create table monthly_sales_grid (
item varchar2(30),
small number,
regular number,
large number,
extra_large number
);

-- Populate table

insert into monthly_sales_grid
values ('French Fries', 1289, 5000, 1599, 2000);
insert into monthly_sales_grid
values ('Vanilla Milkshake', 435, 1002, 431, 432);
insert into monthly_sales_grid
values ('Beef Burger', 900, 2400, 22019, 1483);
insert into monthly_sales_grid
values ('Onion Rings', 324, 1200, 981, null);
insert into monthly_sales_grid
values ('Hot Dog', 1142, 722, null, 154);
insert into monthly_sales_grid
values ('Soda', 2791, 8026, 6193, 3008);



