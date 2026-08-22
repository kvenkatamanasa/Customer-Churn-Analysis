USE customer_churn;

SELECT COUNT(*) AS total_rows
FROM customer_churn_data;

SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM customer_churn_data;

SELECT churn, COUNT(*) AS customer_count
FROM customer_churn_data
GROUP BY churn;

SELECT COUNT(*) AS blank_customer_ids
FROM customer_churn_data
WHERE customer_id IS NULL OR customer_id = '';

DESCRIBE customer_churn_data;
