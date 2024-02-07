select
 date_date
 ,COUNT(orders_id) AS nb_orders
 ,SUM(revenue) AS revenue_1
 ,SUM(margin) AS margin_1
 ,SUM(Operational_margin) AS op_margin
 ,SUM(revenue)/COUNT(orders_id) AS avg_basket
FROM {{ref("int_orders_operational")}}
GROUP BY date_date

