-- 19- On which date was there the highest average order value (order_amount)? Tip: Search and use the SUBSTRING() function. 

SELECT 
	SUBSTRING(order_moment_created, 1, 9) AS data_pedido,
	ROUND(CAST(AVG(order_amount) AS NUMERIC),2) AS media_pedido

FROM project.tb_orders orders

GROUP BY data_pedido

ORDER BY media_pedido DESC