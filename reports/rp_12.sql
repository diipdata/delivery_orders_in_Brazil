-- 12- What is the average payment amount per payment method (payment_method) in descending order?

SELECT
	t1.payment_method,
	ROUND(CAST(AVG(t1.payment_amount) AS NUMERIC), 2)
	
FROM project.tb_payments AS t1

GROUP BY t1.payment_method

ORDER BY ROUND(CAST(AVG(t1.payment_amount) AS NUMERIC), 2) DESC