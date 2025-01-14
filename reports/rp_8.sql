-- 8- Are there orders that are not associated with stores? If so, how many?

SELECT
    COUNT(t1.order_id) AS unassociated_orders
FROM project.tb_orders AS t1

LEFT JOIN project.tb_stores AS t2
ON t1.store_id = t2.store_id

WHERE t2.store_id IS NULL;

