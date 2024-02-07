SELECT 
*
,date_trunc(date_date, month) as date_month
FROM {{ ref("int_campaigns_day") }}
ORDER BY date_month