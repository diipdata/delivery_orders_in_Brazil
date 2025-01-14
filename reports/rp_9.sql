-- 9- What is the total order value (order_amount) in the 'FOOD PLACE' channel?

SELECT
	t2.channel_name,
	ROUND(CAST(SUM(order_amount) AS NUMERIC), 2) AS sum_orders_channel
	
FROM project.tb_orders AS t1

LEFT JOIN project.tb_channels AS t2
ON t1.channel_id = t2.channel_id

WHERE t2.channel_name = 'FOOD PLACE'

GROUP BY t2.channel_name