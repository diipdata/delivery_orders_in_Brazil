-- 14- What is the average order value (order_amount) by hub state (hub_state), shop segment (store_segment) and channel type (channel_type)?

SELECT
	t3.hub_state,
	t2.store_segment,
	t4.channel_type,
	ROUND(CAST(AVG(t1.order_amount) AS NUMERIC), 2)

FROM project.tb_orders AS t1

LEFT JOIN project.tb_stores AS t2
ON t2.store_id = t1.store_id

LEFT JOIN project.tb_hubs AS t3
ON t2.hub_id = t3.hub_id

LEFT JOIN project.tb_channels AS t4
ON t1.channel_id = t4.channel_id

GROUP BY t3.hub_state, t2.store_segment, t4.channel_type