-- Create table to host animal data

create table animals (
animal_id number primary key,
animal_name varchar2(30),
animal_type varchar2(30),
birth_date date,
birth_weight number
);

-- Create a sequence to generate animal ID

create sequence animal_id_sq start with 1 increment by 1;

-- Populate table using sequence

insert into animals
values (animal_id_sq.nextval, 'Olly', 'Giraffe', '12/09/1998', 148);
insert into animals
values (animal_id_sq.nextval, 'Mufasa', 'Lion', '03/05/2004', 2);
insert into animals
values (animal_id_sq.nextval, 'Lucy', 'Seal', '17/08/2011', 9);
insert into animals
values (animal_id_sq.nextval, 'Candy', 'Hippopotamus', '12/02/1997', 31);
insert into animals
values (animal_id_sq.nextval, 'Dolores', 'Elephant', '08/08/2007', 75);
insert into animals
values (animal_id_sq.nextval, 'Dandy', 'Lion', '20/11/2016', '800', 2);
insert into animals
values (animal_id_sq.nextval, 'Mahatma', 'Elephant', '05/04/2002', 94);
insert into animals
values (animal_id_sq.nextval, 'Amarylis', 'Seal', '15/06/2010', 10);
insert into animals
values (animal_id_sq.nextval, 'Carmody', 'Giraffe', '10/12/1999', 103);
insert into animals
values (animal_id_sq.nextval, 'Philip', 'Seal', '25/10/2014', 6);
insert into animals
values (animal_id_sq.nextval, 'Grenada', 'Giraffe', '07/03/2001', 124);
insert into animals
values (animal_id_sq.nextval, 'Fancy', 'Hippopotamus', '02/09/2013', 48);
insert into animals
values (animal_id_sq.nextval, 'Rosy', 'Giraffe', '18/01/2008', 131);
insert into animals
values (animal_id_sq.nextval, 'Clive', 'Seal', '30/06/1996', 7);
insert into animals
values (animal_id_sq.nextval, 'Belinda', 'Elephant', '09/11/2005', 83);
insert into animals
values (animal_id_sq.nextval, 'Eliza', 'Seal', '22/05/2019', 9);
insert into animals
values (animal_id_sq.nextval, 'Melissa', 'Hippopotamus', '01/08/2003', 52);
insert into animals
values (animal_id_sq.nextval, 'Imelda', 'Lion', '12/10/2017', 1);
insert into animals
values (animal_id_sq.nextval, 'Cornelius', 'Elephant', '14/02/1995', 76);
insert into animals
values (animal_id_sq.nextval, 'Tony', 'Hippopotamus', '19/07/2019', 27);



