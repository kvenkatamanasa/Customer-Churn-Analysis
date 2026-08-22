USE customer_churn;
SELECT COUNT(*) AS total_customers,
       SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
       SUM(CASE WHEN churn='No' THEN 1 ELSE 0 END) AS retained_customers,
       ROUND(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS churn_rate_percentage,
       ROUND(AVG(monthly_charges),2) AS avg_monthly_charges,
       ROUND(AVG(total_charges),2) AS avg_total_charges,
       ROUND(AVG(tenure_months),2) AS avg_tenure_months
FROM customer_churn_data;
