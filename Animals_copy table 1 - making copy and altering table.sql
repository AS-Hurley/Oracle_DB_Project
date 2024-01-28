-- Alterations to copy of Animals table

alter table animals_copy
drop column animal_type;

alter table animals_copy
drop column birth_weight;

alter table animals_copy
drop column animal_id;

alter table animals_copy
rename column animal_name
to puppy;

alter table animals_copy
add sire varchar2 (30);

alter table animals_copy
add dam varchar2 (30);
