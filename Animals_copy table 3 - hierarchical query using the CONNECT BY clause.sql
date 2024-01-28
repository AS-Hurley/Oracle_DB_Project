/* Hierarchical query fetches ancestry tree for a specified puppy. The tree is formed by connecting puppies to their 
respective dams */

select dam, sire, lpad(' ',6*(level-1))||puppy as offspring,
birth_date
from animals_copy
where dam is not null
start with puppy = 'Tony'
connect by puppy = prior dam
order by birth_date;