SELECT
 date_date
 ,sum(ads_cos) AS ads_cost
 ,SUM(impression) AS ads_impression
 ,sum(click) AS ads_click
FROM {{ref("int_campaigns")}}
GROUP BY 1