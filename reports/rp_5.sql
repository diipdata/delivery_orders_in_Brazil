-- 5- Which type of driver (driver_type) made the most deliveries?

SELECT
	COUNT(t1.driver_type) AS orders_made,
	t1.driver_type AS driver_type

FROM project.tb_drivers AS t1

INNER JOIN project.tb_deliveries AS t2
ON t1.driver_id = t2.driver_id

GROUP BY t1.driver_type