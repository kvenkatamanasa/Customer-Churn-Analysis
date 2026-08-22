USE customer_churn;
SELECT ROUND(
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100,
    2
) AS churn_rate_percentage
FROM customer_churn_data;
