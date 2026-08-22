USE customer_churn;
SELECT CASE WHEN senior_citizen=1 THEN 'Senior Citizen' ELSE 'Non-Senior Citizen' END AS customer_type,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
       ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS churn_rate_percentage
FROM customer_churn_data
GROUP BY senior_citizen
ORDER BY churn_rate_percentage DESC;
