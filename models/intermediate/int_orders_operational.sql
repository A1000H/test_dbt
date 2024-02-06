with sub_mar AS ( SELECT 
*
FROM {{ref("int_sales_margin")}} as mar
left join 
{{ref("stg_raw__ship")}} as shi
using (orders_id))

SELECT 
*
,(Margin - shipping_fee - logcost - CAST(ship_cost AS float64)) AS Operational_margin

FROM sub_mar



