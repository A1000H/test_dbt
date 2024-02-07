select
    date_date,
    count(orders_id) as nb_orders,
    round(sum(revenue), 2) as revenue_1,
    round(sum(margin), 2) as margin_1,
    round(sum(operational_margin), 2) as op_margin,
    round(sum(revenue) / count(orders_id), 2) as avg_basket
from {{ ref("int_orders_operational") }}
group by date_date