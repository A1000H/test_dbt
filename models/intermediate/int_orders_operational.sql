with sub_mar AS ( SELECT 
*
FROM {{ref("int_orders_margin")}} as mar
left join 
{{ref("stg_raw__ship")}} as shi
using (orders_id))

SELECT 
orders_id
,date_date
,Margin - shipping_fee - logcost - CAST(ship_cost AS float64) AS Operational_margin

FROM sub_mar