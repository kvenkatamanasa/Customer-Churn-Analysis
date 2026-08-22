USE customer_churn;
SELECT contract,
       CASE
         WHEN monthly_charges < 50 THEN 'Below 50'
         WHEN monthly_charges < 80 THEN '50-79.99'
         WHEN monthly_charges < 100 THEN '80-99.99'
         ELSE '100+'
       END AS charge_group,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
       ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS churn_rate_percentage
FROM customer_churn_data
GROUP BY contract, charge_group
ORDER BY churn_rate_percentage DESC;
