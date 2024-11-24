select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        type as value_field,
        count(*) as n_records

    from "postgres"."public_staging"."stg_activity_types"
    group by type

)

select *
from all_values
where value_field not in (
    'meeting','sc_2','follow_up','after_close_call'
)



      
    ) dbt_internal_test