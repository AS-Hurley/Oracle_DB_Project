-- Retrieves animals of the same type as Olly, identified by a scalar subquery.

select animal_id, animal_name, animal_type
from animals
where animal_type = (select animal_type
                                        from animals
                                        where animal_name = 'Olly')
and not animal_name = 'Olly';