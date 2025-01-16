-- 16- What is the total order amount (order_amount) by hub state (hub_state), store segment (store_segment) and channel type (channel_type)? Show the intermediate totals and format the result.

SELECT
    CASE 
        WHEN GROUPING(t3.hub_state) = 1 THEN 'total hub state' 
        ELSE t3.hub_state 
    END AS hub_state,

    CASE 
        WHEN GROUPING(t2.store_segment) = 1 THEN 'total store segment' 
        ELSE t2.store_segment 
    END AS store_segment,

    CASE 
        WHEN GROUPING(t4.channel_type) = 1 THEN 'total channel type' 
        ELSE t4.channel_type 
    END AS channel_type,

    TO_CHAR(SUM(t1.order_amount), 'FM999,999,999.00') AS total_order

FROM project.tb_orders AS t1

INNER JOIN project.tb_stores AS t2
ON t1.store_id = t2.store_id

INNER JOIN project.tb_hubs AS t3
ON t2.hub_id = t3.hub_id

INNER JOIN project.tb_channels AS t4
ON t1.channel_id = t4.channel_id

GROUP BY
    GROUPING SETS (
        (t3.hub_state, t2.store_segment, t4.channel_type),
        (t3.hub_state, t2.store_segment),
        (t3.hub_state),
        ()
    );