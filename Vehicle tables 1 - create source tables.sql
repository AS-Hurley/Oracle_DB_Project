-- Create table to host vehicle data
create table vehicles (
vehicle_id number primary key,
vehicle_make varchar(10),
vehicle_model varchar(30),
vehicle_type char(3) default 'Van'
);

-- Create table to host warranty information

create table vehicle_warranty_info (
vehicle_id number not null,
warranty_start date,
warranty_end date,
warranty_valid varchar2(7),
constraint id_fk  foreign key (vehicle_id) references vehicles (vehicle_id)
);

-- Populate vehicles table

insert into vehicles
values (100, 'Ford', 'Transit', default);
insert into vehicles
values (110, 'Mercedes', 'Sprinter', default);
insert into vehicles
values (120, 'Volkswagen', 'Transporter', default);
insert into vehicles
values (130, 'Dodge', 'Grand Caravan', default);
insert into vehicles
values (140, 'Nissan', 'NV Cargo', default);
insert into vehicles
values (150, 'Chevrolet', 'Express', default);
insert into vehicles
values (160, 'Toyota', 'Sienna', default);
insert into vehicles
values (170, 'Volkswagen', 'Crafter', default);
insert into vehicles
values (180, 'Toyota', 'Camry', 'Car');
insert into vehicles
values (190, 'Honda', 'Accord', 'Car');
insert into vehicles
values (200, 'Ford', 'Mustang', 'Car');

-- Populate warranties table

insert into vehicle_warranty_info
values (100, to_date('July 12, 2013', 'Month DD, RRRR'), to_date('July 11, 2018', 'Month DD, RRRR'), 'No');
insert into vehicle_warranty_info
values (110, to_date('September 25, 2016', 'Month DD, RRRR'), to_date('September 24, 2020', 'Month DD, RRRR'), 'No');
insert into vehicle_warranty_info
values (120, to_date('March 7, 2019', 'Month DD, RRRR'), to_date('March 6, 2024', 'Month DD, RRRR'), 'Yes');
insert into vehicle_warranty_info
values (130, null, null, 'Unclear');
insert into vehicle_warranty_info
values (140, to_date('June 10, 2020', 'Month DD, RRRR'), to_date('June 9, 2025', 'Month DD, RRRR'), 'Yes');
insert into vehicle_warranty_info
values (150, to_date('April 14, 2017', 'Month DD, RRRR'), to_date('April 13, 2020', 'Month DD, RRRR'), 'No');
insert into vehicle_warranty_info
values (160, to_date('July 12, 2013', 'Month DD, RRRR'), to_date('July 11, 2018', 'Month DD, RRRR'), 'No');
insert into vehicle_warranty_info
values (170, to_date('November 23, 2021', 'Month DD, RRRR'), to_date('November 23, 2025', 'Month DD, RRRR'), 'Yes');
insert into vehicle_warranty_info
values (180, null, null, 'Unclear');
insert into vehicle_warranty_info
values (190, to_date('July 2, 2022', 'Month DD, RRRR'), to_date('July 1, 2025', 'Month DD, RRRR'), 'Yes');
insert into vehicle_warranty_info
values (200, to_date('January 27, 2023', 'Month DD, RRRR'), to_date('January 27, 2026', 'Month DD, RRRR'), 'Yes');


commit;