-- Temporary table with average birth weight per animal type is used to select animals heavier than the average.

with average_animal_weight as 
(
select animal_type, avg(birth_weight) as average_birth_weight
 from animals
 group by animal_type
 )
 
 select a.animal_name, a.animal_type, a.birth_weight
 from animals a join average_animal_weight w        on a.animal_type = w.animal_type
 where a.birth_weight > w.average_birth_weight;


 
