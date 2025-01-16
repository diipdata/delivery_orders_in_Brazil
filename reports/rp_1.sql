-- 1- What is the number of hubs per city?

SELECT
	H.hub_city AS city,
	COUNT(H.hub_city) AS number_hubs
		
FROM project.tb_hubs AS H

GROUP BY H.hub_city

ORDER BY number_hubs DESC