-- Adding further dog names

insert all into animals_copy (puppy)
                values ('Max')
                into animals_copy (puppy)
                values ('Charlie')
                into animals_copy (puppy)
                values ('Bella')
select * from dual;

-- Updating table with Dam names using CASE function

update animals_copy
set dam =
case 

when puppy in ('Candy', 'Olly', 'Cornelius', 'Clive') then 'Bella'

when puppy in ('Tony', 'Imelda', 'Eliza', 'Philip') then 'Rosy'
                 
when puppy in ('Dolores', 'Amarylis', 'Fancy', 'Lucy') then 'Belinda'
                 
when puppy in ('Carmody', 'Mahatma', 'Grenada') then 'Candy'
                 
when puppy in ('Rosy', 'Belinda', 'Mufasa', 'Melissa') then 'Grenada'

end;

-- Updating table with Sire names using CASE function

update animals_copy
set sire =
case 
            
when puppy in ('Candy', 'Mufasa', 'Amarylis', 'Grenada') then 'Max'
                
when puppy in ('Lucy', 'Clive', 'Mahatma', 'Rosy', 'Cornelius') then 'Charlie'
                
when puppy in ('Dolores', 'Philip', 'Fancy', 'Lucy', 'Eliza', 'Tony', 'Imelda' ) then 'Mufasa'
                
when puppy in ('Carmody', 'Melissa', 'Olly') then 'Cornelius'
                
end;

           