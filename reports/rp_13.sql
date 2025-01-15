-- 13- Which payment methods had an average value of more than 100?

SELECT 
	t1.payment_method,
	ROUND(CAST(AVG(t1.payment_amount) AS NUMERIC),2) AS avg_value_100plus
	
FROM project.tb_payments AS t1

GROUP BY t1.payment_method

HAVING ROUND(CAST(AVG(t1.payment_amount) AS NUMERIC),2) > 100

ORDER BY avg_value_100plus DESC