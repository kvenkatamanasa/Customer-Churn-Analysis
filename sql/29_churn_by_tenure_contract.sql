USE customer_churn;

SELECT
    contract,
    CASE
        WHEN tenure_months <= 12 THEN '0-12 Months'
        WHEN tenure_months <= 24 THEN '13-24 Months'
        WHEN tenure_months <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS churn_rate_percentage
FROM customer_churn_data
GROUP BY contract, tenure_group
ORDER BY churn_rate_percentage DESC;
