-- 3- What is the number of stores per hub city?

SELECT
	COUNT(S.store_id) AS stores,
	H.hub_city AS cities
	
FROM project.tb_stores as S

INNER JOIN project.tb_hubs AS H
ON S.hub_id = H.hub_id

GROUP BY H.hub_city