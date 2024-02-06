select
*
,ss.quantity * CAST(pt.purchse_price as float64) AS Purchase_cost
,ss.revenue - (ss.quantity *CAST(pt.purchse_price as float64)) AS Margin
from
{{ref("stg_raw__product")}} as pt
left join
{{ref("stg_raw__sales")}} as  ss
on pt.products_id = ss. pdt_id



--Margin = Revenue - Purchase_cost
--Purchase_cost = Quantity * Purchase_price