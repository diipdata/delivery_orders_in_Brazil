-- 1- What is the number of hubs per city?

SELECT
	COUNT(H.hub_city) AS number_hubs,
	H.hub_city AS city
		
FROM project.tb_hubs AS H

GROUP BY H.hub_city