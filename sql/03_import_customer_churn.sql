USE customer_churn;

LOAD DATA LOCAL INFILE 'C:/Users/Administrator/Desktop/Customer-Churn-Analysis/data/customer_churn_cleaned.csv'
INTO TABLE customer_churn_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
