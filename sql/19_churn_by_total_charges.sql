USE customer_churn;
SELECT CASE
         WHEN total_charges < 1000 THEN 'Below 1000'
         WHEN total_charges < 3000 THEN '1000-2999'
         WHEN total_charges < 5000 THEN '3000-4999'
         ELSE '5000+'
       END AS total_charge_group,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
       ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS churn_rate_percentage
FROM customer_churn_data
GROUP BY total_charge_group
ORDER BY churn_rate_percentage DESC;
