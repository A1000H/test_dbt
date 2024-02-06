with

    source as (select * from {{ source("raw", "ship") }}),

    renamed as (

         orders_id,
         shipping_fee,
         logcost,
         ship_cost
        from sourceselect
        
       

    )

select *
from renamed
