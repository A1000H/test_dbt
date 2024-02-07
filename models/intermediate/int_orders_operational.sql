with
    sub_mar as (
        select *
        from {{ ref("int_sales_margin") }} as mar
        left join {{ ref("stg_raw__ship") }} as shi using (orders_id)
    )

select
    *,
    (margin - shipping_fee - logcost - cast(ship_cost as float64)) as operational_margin

from sub_mar
