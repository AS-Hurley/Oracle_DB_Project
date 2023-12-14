-- Create target tables for vehicle data based on warranty status

create table vehicles_under_warranty (
vehicle_id number,
vehicle_make varchar2(10),
vehicle_model varchar2(30),
constraint warranty_fk  foreign key (vehicle_id) references vehicles (vehicle_id)
);

create table vehicles_warranty_expired (
vehicle_id number,
vehicle_make varchar2(10),
vehicle_model varchar2(30),
constraint vehicle_fk  foreign key (vehicle_id) references vehicles (vehicle_id)
);

create table vehicles_to_replace (
vehicle_id number,
vehicle_make varchar2(10),
vehicle_model varchar2(30),
constraint old_vehicle_fk  foreign key (vehicle_id) references vehicles (vehicle_id)
);

create table vehicles_warranty_unclear (
vehicle_id number,
vehicle_make varchar2(10),
vehicle_model varchar2(30),
constraint unclear_vehicle_fk  foreign key (vehicle_id) references vehicles (vehicle_id)
);

-- Add Primary Key constraints

alter table vehicle_warranty_unclear
modify vehicle_id primary key;

alter table vehicles_to_replace
modify vehicle_id primary key;

alter table vehicle_warranty_expired
modify vehicle_id primary key;

alter table vehicles_under_warranty
modify vehicle_id primary key;