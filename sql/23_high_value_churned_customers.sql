USE customer_churn;
SELECT customer_id, contract, tenure_months, monthly_charges,
       total_charges, payment_method
FROM customer_churn_data
WHERE churn='Yes'
ORDER BY total_charges DESC;
