-- Conditional multitable INSERT based on warranty status inserts values into four target tables

insert all
        when warranty_valid = 'Yes' then
            into vehicles_under_warranty (vehicle_id, vehicle_make, vehicle_model)
            values (vehicle_id, vehicle_make, vehicle_model)
            
        when warranty_valid = 'No' then
            into vehicles_warranty_expired (vehicle_id, vehicle_make, vehicle_model)
            values  (vehicle_id, vehicle_make, vehicle_model)
        
             into vehicles_to_replace  (vehicle_id, vehicle_make, vehicle_model)
             values  (vehicle_id, vehicle_make, vehicle_model)
             
        when warranty_valid = 'Unclear' then
            into vehicles_warranty_unclear (vehicle_id, vehicle_make, vehicle_model)
            values  (vehicle_id, vehicle_make, vehicle_model)
            
select warranty_valid, vehicle_id, vehicle_make, vehicle_model
from vehicle_warranty_info 
natural join vehicles;

commit;




        