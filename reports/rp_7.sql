-- 7- What is the average order value (order_amount) per store, in descending order?

SELECT
    t2.store_name,
    ROUND(CAST(AVG(t1.order_amount) AS NUMERIC), 2) AS avg_orders
FROM project.tb_orders AS t1

INNER JOIN project.tb_stores AS t2
ON t1.store_id = t2.store_id

GROUP BY t2.store_name
ORDER BY avg_orders DESC;
