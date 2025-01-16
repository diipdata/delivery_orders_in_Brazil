-- 20- On which dates did the order value equal zero (i.e. there were no sales)? Tip: Use the SUBSTRING() function.

SELECT 
	SUBSTRING(order_moment_created, 1, 9) AS data_pedido,
	MIN(order_amount) AS min_pedido

FROM project.tb_orders orders

GROUP BY data_pedido

HAVING MIN(order_amount) = 0

ORDER BY data_pedido ASC