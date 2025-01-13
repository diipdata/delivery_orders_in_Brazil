-- 4- What is the highest and lowest payment amount (payment_amount) recorded?

SELECT
	MIN(P.payment_amount) lowest_payment,
	MAX(P.payment_amount) highest_payment
	
FROM project.tb_payments AS P