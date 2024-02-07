with 

source as (

    select * from {{ source('raw_2', 'adwords') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name AS campaing_name,
        CAST(ads_cost AS float64) AS ads_cos,
        impression,
        click

    from source

)

select * from renamed
