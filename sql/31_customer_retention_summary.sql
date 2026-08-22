USE customer_churn;

SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn='No' THEN 1 ELSE 0 END) AS retained_customers,
    SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN churn='No' THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS retention_rate_percentage,
    ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS churn_rate_percentage
FROM customer_churn_data;
