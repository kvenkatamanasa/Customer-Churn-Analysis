USE customer_churn;
SELECT churn, COUNT(*) AS total_customers,
       ROUND(AVG(monthly_charges),2) AS avg_monthly_charges
FROM customer_churn_data
GROUP BY churn;
