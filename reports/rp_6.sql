-- 5- What is the average delivery distance by driver type (driver_modal)?

SELECT
	t2.driver_modal,
	ROUND(AVG(t1.delivery_distance_meters)) AS avg_delivery_distance
	
FROM project.tb_deliveries AS t1

INNER JOIN project.tb_drivers AS t2
ON t1.driver_id = t2.driver_id

GROUP BY t2.driver_modal