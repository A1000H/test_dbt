with 

source as (

    select * from {{ source('course18', 'raw_sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id,
        revenue,
        quantity

    from source

)

select * from renamed
