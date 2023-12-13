/* This statement operates against the HR sample schema. I have created 2 copies of the DEPARTMENTS table for this
purpose, and made changes to my source table. */

update departments_source
set manager_id = 108
where department_id = 120;

update departments_source
set location_id = 1400
where department_id in (230, 210);

insert into departments_source
values (280, 'Inside Sales', 145, 2500);

insert into departments_source
values (290, 'Procurement', null, null);