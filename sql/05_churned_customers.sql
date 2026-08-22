USE customer_churn;
SELECT COUNT(*) AS churned_customers
FROM customer_churn_data
WHERE churn = 'Yes';
