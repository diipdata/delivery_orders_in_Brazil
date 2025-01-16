-- 17- When the order was from the Rio de Janeiro Hub (hub_state), store segment ‘FOOD’, channel type Marketplace and was canceled, what was the average order value (order_amount)?

SELECT
	t3.hub_state,
	ROUND(CAST(AVG(order_amount)AS NUMERIC), 2) AS avg_rj
	
FROM project.tb_orders AS t1

LEFT JOIN project.tb_stores AS t2
ON t2.store_id = t1.store_id

LEFT JOIN project.tb_hubs AS t3
ON t3.hub_id = t2.hub_id

LEFT JOIN project.tb_channels AS t4
ON t4.channel_id = t1.channel_id

WHERE t1.order_status = 'CANCELED'
AND t3.hub_state = 'RJ'
AND t2.store_segment = 'FOOD'

GROUP BY t3.hub_state