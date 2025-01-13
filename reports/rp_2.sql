-- 2- What is the number of orders per status?

SELECT
	COUNT(order_id) AS orders,
	order_status AS status
	
FROM project.tb_orders

GROUP BY order_status