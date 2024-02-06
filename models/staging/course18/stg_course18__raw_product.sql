with 

source as (

    select * from {{ source('course18', 'raw_product') }}

),

renamed as (

    select
        products_id,
        purchse_price

    from source

)

select * from renamed
