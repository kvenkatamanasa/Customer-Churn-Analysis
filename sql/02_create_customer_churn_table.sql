USE customer_churn;

CREATE TABLE IF NOT EXISTS customer_churn_data (
    customer_id VARCHAR(20),
    gender VARCHAR(20),
    senior_citizen INT,
    tenure_months INT,
    partner VARCHAR(10),
    dependents VARCHAR(10),
    internet_service VARCHAR(30),
    online_security VARCHAR(10),
    online_backup VARCHAR(10),
    contract VARCHAR(30),
    monthly_charges DECIMAL(10,2),
    total_charges DECIMAL(10,2),
    paperless_billing VARCHAR(10),
    payment_method VARCHAR(40),
    churn VARCHAR(10)
);
