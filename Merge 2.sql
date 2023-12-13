/* This statement operates against the HR sample schema. It merges rows from the source table into the target table. It updates 
records if the department IDs match in both tables and inserts new records if they do not, and deletes target records with null 
location IDs, excluding those meeting the ON condition. */

merge into departments_target t
    using departments_source s  
     on (s.department_id = t.department_id)
    when    matched then update set
                                            t.department_name = s.department_name, 
                                            t.manager_id = s.manager_id, 
                                            t.location_id = s.location_id
                    delete where t.location_id is null
    when    not matched then insert
                    (t.department_id, t.department_name, t.manager_id, t.location_id)
                     values (s.department_id, s.department_name, s.manager_id, s.location_id);

    
    