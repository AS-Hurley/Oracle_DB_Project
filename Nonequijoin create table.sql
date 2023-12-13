-- Create table to host patient data

create table patients (
patient_id number,
first_name varchar2(20),
last_name varchar2(30),
age number,
bmi number
);

-- Add a named Primary Key

alter table patients
add constraint patients_pk primary key (patient_id);

-- Create sequence to generate patient ID

create sequence sq_patient_id_gen start with 1 increment by 1;

-- Populate patients table using sequence

insert into patients
values (sq_patient_id_gen.nextval, 'Linda', 'Callaghan', 40, 17);
insert into patients
values (sq_patient_id_gen.nextval, 'Bobby', 'Lawson', 57, 26);
insert into patients
values (sq_patient_id_gen.nextval, 'Carla', 'Lilley', 54, 30);
insert into patients
values (sq_patient_id_gen.nextval, 'Bella', 'Corey', 17, 21);
insert into patients
values (sq_patient_id_gen.nextval, 'Rita', 'O`Meara', 67, 30);
insert into patients
values (sq_patient_id_gen.nextval, 'Harry', 'Klein', 25, 46);
insert into patients
values (sq_patient_id_gen.nextval, 'Ronnie', 'Anderson', 34, 72);
insert into patients
values (sq_patient_id_gen.nextval, 'Callum', 'Beatty', 28, 25);
insert into patients
values (sq_patient_id_gen.nextval, 'Cora', 'Robson', 52, 11);
insert into patients
values (sq_patient_id_gen.nextval, 'Jason', 'Ormond', 63, 26);



