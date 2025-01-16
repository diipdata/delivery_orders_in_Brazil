-- 18- When the order was from the 'GOOD' store segment, Marketplace channel type and was canceled, did any hub_state have a total order value greater than 100,000?

SELECT
	t3.hub_state,
	ROUND(CAST(SUM(order_amount)AS NUMERIC), 2) AS sum_rj
	
FROM project.tb_orders AS t1

LEFT JOIN project.tb_stores AS t2
ON t2.store_id = t1.store_id

LEFT JOIN project.tb_hubs AS t3
ON t3.hub_id = t2.hub_id

LEFT JOIN project.tb_channels AS t4
ON t4.channel_id = t1.channel_id

WHERE t1.order_status = 'CANCELED'
AND t2.store_segment = 'GOOD'
AND t4.channel_type = 'MARKETPLACE'

GROUP BY t3.hub_state

HAVING ROUND(CAST(SUM(order_amount)AS NUMERIC), 2) > 100000