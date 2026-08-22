USE customer_churn;

SELECT
    contract,
    payment_method,
    internet_service,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS churn_rate_percentage
FROM customer_churn_data
GROUP BY contract, payment_method, internet_service
HAVING COUNT(*) >= 10
ORDER BY churn_rate_percentage DESC, total_customers DESC
LIMIT 10;
