USE customer_churn;
SELECT churn, COUNT(*) AS total_customers,
       ROUND(AVG(tenure_months),2) AS avg_tenure_months
FROM customer_churn_data
GROUP BY churn;
