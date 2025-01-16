-- 11- What was the average value of cancelled payments (chargeback)? 

SELECT 
	t1.payment_status,
	ROUND(CAST(AVG(t1.payment_amount) AS NUMERIC), 2) AS avg_chargeback_amout

FROM project.tb_payments AS t1

WHERE t1.payment_status = 'CHARGEBACK'

GROUP BY t1.payment_status