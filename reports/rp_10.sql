-- 10- How many payments were canceled (chargeback)?

SELECT
	t1.payment_status,
	COUNT( payment_status)
	
FROM project.tb_payments AS t1

WHERE t1.payment_status = 'CHARGEBACK'

GROUP BY t1.payment_status