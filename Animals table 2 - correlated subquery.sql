-- Correlated subquery returns the details of animals with a lower birth weight than the average for their animal type

select a.animal_id, a.animal_name, a.animal_type, a.birth_weight
from animals a
where a.birth_weight < (select avg(birth_weight)
                                        from animals 
                                        where animal_type = a.animal_type)
order by animal_type;
                                      
