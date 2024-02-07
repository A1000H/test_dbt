with
    sub_day as (
        select *
        from {{ ref("finance_days") }} as mar
        FULL OUTER JOIN
        {{ ref("int_campaigns_day") }} as shi using (date_date)
    )

select *, op_margin - ads_cost as ads_margin
from sub_day
