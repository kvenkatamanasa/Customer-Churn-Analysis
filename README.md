# Customer Churn Analysis

## 1. Project Overview

Customer churn is an important business problem because losing customers can reduce revenue and increase the cost of acquiring new customers.

This project analyzes customer churn data using **Python** and **Microsoft Power BI**. The goal is to understand customer behavior, identify patterns related to churn, analyze revenue, and present the results through an interactive dashboard.

The project focuses on:

* Customer churn analysis
* Customer demographics
* Customer services
* Contract types
* Payment methods
* Customer tenure
* Monthly charges
* Total charges
* Revenue analysis
* Customer retention insights

---

## 2. Project Objectives

The main objectives of this project are:

1. Analyze the overall customer base.
2. Identify the number of churned customers.
3. Calculate churn rate and retention rate.
4. Analyze churn across different customer segments.
5. Understand the relationship between churn and customer tenure.
6. Analyze churn based on contract type.
7. Analyze churn based on payment method.
8. Analyze customer services such as Internet Service, Online Security, and Online Backup.
9. Analyze customer charges and revenue.
10. Create an interactive Power BI dashboard.
11. Perform customer churn analysis using Python.
12. Present the findings in a clear and understandable format.

---

## 3. Technologies Used

### Programming Language

* Python 3.10+

### Python Libraries

* Pandas
* NumPy
* Matplotlib
* Seaborn

### Data Visualization

* Microsoft Power BI
* Matplotlib
* Seaborn

### Development Environment

* Jupyter Notebook

### Documentation

* Microsoft Word
* GitHub

---

## 4. Dataset Description

The dataset contains customer-level information related to demographics, services, contracts, billing, payment methods, and churn.

Each row represents one customer.

### Dataset Columns

| Column              | Description                                               |
| ------------------- | --------------------------------------------------------- |
| `customer_id`       | Unique customer identifier                                |
| `gender`            | Customer gender                                           |
| `senior_citizen`    | Indicates whether the customer is a senior citizen        |
| `tenure_months`     | Number of months the customer has stayed with the service |
| `partner`           | Whether the customer has a partner                        |
| `dependents`        | Whether the customer has dependents                       |
| `internet_service`  | Type of internet service                                  |
| `online_security`   | Whether online security is subscribed                     |
| `online_backup`     | Whether online backup is subscribed                       |
| `contract`          | Customer contract type                                    |
| `monthly_charges`   | Monthly amount charged to the customer                    |
| `total_charges`     | Total amount charged to the customer                      |
| `paperless_billing` | Whether paperless billing is enabled                      |
| `payment_method`    | Customer payment method                                   |
| `churn`             | Whether the customer has churned                          |

---

## 5. Project Structure

```text
Customer-Churn-Analysis/
│
├── Customer_Churn_Analysis.ipynb
├── Customer Churn Dashboard.pbix
├── Customer_Churn_Project_Documentation.docx
├── customer_churn_data.csv
└── README.md
```

### File Description

**`Customer_Churn_Analysis.ipynb`**

Contains the complete Python customer churn analysis.

**`Customer Churn Dashboard.pbix`**

Contains the interactive Power BI dashboard.

**`Customer_Churn_Project_Documentation.docx`**

Contains the complete project documentation.

**`customer_churn_data.csv`**

Contains the customer churn dataset used for analysis.

**`README.md`**

Contains information about the project, tools, dataset, analysis, dashboard, and results.

---

# 6. Python Analysis

Python was used to perform data analysis and create visualizations.

The Python analysis contains **15 steps**.

### Step 1 — Import Libraries

The required Python libraries are imported:

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
```

### Step 2 — Load Dataset

The customer churn CSV file is loaded using Pandas.

```python
df = pd.read_csv("customer_churn_data.csv")
```

### Step 3 — Display First Rows

The first rows of the dataset are displayed to understand the data structure.

```python
df.head(10)
```

### Step 4 — Check Rows and Columns

The number of rows and columns is checked.

```python
df.shape
```

### Step 5 — Check Data Types

The data types and general structure are checked.

```python
df.info()
```

### Step 6 — Check Missing Values

Missing values and duplicate records are checked.

```python
df.isnull().sum()
```

```python
df.duplicated().sum()
```

### Step 7 — Data Cleaning

Categorical and numeric fields are checked and prepared for analysis.

The `senior_citizen` field can also be represented as Yes/No for easier interpretation.

### Step 8 — Statistical Analysis

Descriptive statistics are generated to understand the numerical variables.

```python
df.describe()
```

### Step 9 — Churn Distribution

The number and percentage of churned and retained customers are analyzed.

```python
df["churn"].value_counts()
```

A visualization is also created to display the churn distribution.

### Step 10 — Churn by Gender

Customer churn is analyzed based on gender.

```python
pd.crosstab(df["gender"], df["churn"])
```

### Step 11 — Churn by Contract

Churn is analyzed across different contract types.

```python
pd.crosstab(df["contract"], df["churn"])
```

### Step 12 — Churn by Payment Method

Churn is analyzed according to payment method.

```python
pd.crosstab(df["payment_method"], df["churn"])
```

### Step 13 — Tenure and Charges Analysis

Customer tenure, monthly charges, and total charges are compared between churned and retained customers.

### Step 14 — Service Analysis

Churn is analyzed based on:

* Internet Service
* Online Security
* Online Backup
* Partner
* Dependents

### Step 15 — Final Metrics and Insights

Important customer churn metrics are calculated, including:

* Total Customers
* Churned Customers
* Churn Rate
* Retention Rate
* Average Tenure
* Average Monthly Charges
* Average Total Charges

---

# 7. Power BI Dashboard

The Power BI report contains **three pages**.

---

## Page 1 — Churn Customer Dashboard

The first page provides an overview of customer churn.

### KPI Cards

* Total Customers
* Churned Customers
* Churn Rate
* Retention Rate

### Churn Analysis

* Churned Customers by Gender
* Churn Rate by Gender
* Churned Customers by Payment Method
* Churn Rate by Payment Method
* Churned Customers by Tenure
* Churn Rate by Tenure
* Churned Customers by Contract
* Churn Trend / Churn-related analysis

This page provides a quick overview of the customer churn situation.

---

# 8. Customer Analysis Dashboard

The second page focuses on customer characteristics and services.

### KPI Cards

* Total Customers
* New Customers
* Active Customers
* Average Tenure

### Customer Distribution

* Customer Distribution by Gender
* Customer Distribution by Senior Citizen
* Customer Distribution by Partner
* Customer Distribution by Dependents
* Customer Distribution by Internet Service
* Customer Distribution by Online Security
* Customer Distribution by Online Backup
* Customer Distribution by Paperless Billing
* Customer Distribution by Contract
* Customer Distribution by Payment Method
* Customer Distribution by Tenure

### Charge Analysis

* Average Monthly Charges by Contract
* Average Total Charges by Contract

This page helps understand the composition and characteristics of the customer base.

---

# 9. Revenue Analysis Dashboard

The third page focuses on customer charges and revenue.

### KPI Cards

* Total Revenue
* Average Monthly Charges
* Average Total Charges

### Revenue Charts

* Revenue by Contract
* Revenue by Internet Service
* Revenue by Payment Method
* Revenue by Gender
* Revenue by Senior Citizen
* Revenue by Partner
* Revenue by Dependents
* Revenue by Tenure

### Slicers

* Contract
* Internet Service

These slicers allow users to interactively filter the revenue analysis.

---

# 10. Dashboard Features

The Power BI dashboard provides:

* Interactive charts
* KPI cards
* Slicers
* Customer segmentation
* Churn analysis
* Revenue analysis
* Contract analysis
* Payment method analysis
* Service analysis
* Tenure analysis

The dashboard is designed to make customer churn information easy to understand.

---

# 11. Key Metrics

The project calculates several important business metrics.

### Churn Rate

```text
Churn Rate = Churned Customers / Total Customers × 100
```

### Retention Rate

```text
Retention Rate = Retained Customers / Total Customers × 100
```

### Average Tenure

```text
Average Tenure = Sum of Customer Tenure / Number of Customers
```

### Average Monthly Charges

```text
Average Monthly Charges = Total Monthly Charges / Number of Customers
```

### Average Total Charges

```text
Average Total Charges = Total Charges / Number of Customers
```

---

# 12. Key Findings

The project examines the following important areas:

### Customer Churn

The analysis identifies the proportion of customers who have left the service and compares churned and retained customers.

### Contract

Contract type is analyzed to understand differences in customer retention and revenue.

### Payment Method

Different payment methods are compared to identify variations in churn behavior and revenue.

### Tenure

Customer tenure is analyzed to understand how customer behavior changes over time.

### Internet Service

Different Internet Service categories are compared based on customer count, churn, and revenue.

### Online Services

Online Security and Online Backup are analyzed to understand their relationship with customer churn.

### Customer Demographics

Gender, senior-citizen status, partner status, and dependents are used for customer segmentation.

### Revenue

Monthly and total charges are analyzed to understand the financial characteristics of the customer base.

> The exact strongest and weakest customer segments should be taken from the final Python and Power BI results rather than assumed.

---

# 13. Business Insights

The analysis can help a business:

* Identify customers who are more likely to churn.
* Understand customer segments with higher churn.
* Monitor churn rate and retention rate.
* Identify service categories associated with customer behavior.
* Understand the effect of contract types on retention.
* Compare payment methods.
* Analyze customer tenure.
* Monitor revenue and customer charges.
* Develop targeted customer-retention strategies.

---

# 14. Recommendations

Based on the analysis framework, businesses can consider:

1. Focusing retention efforts on customer segments with higher churn.
2. Encouraging customers to choose longer-term contracts where appropriate.
3. Investigating payment methods associated with higher churn.
4. Providing better support during the early customer lifecycle.
5. Promoting useful services such as Online Security and Online Backup.
6. Monitoring customers with unusual changes in charges or engagement.
7. Using dashboard filters to identify specific high-risk customer groups.
8. Regularly monitoring churn and retention KPIs.

---

# 15. Machine Learning

Machine Learning is **not included in this version of the project**.

The project focuses on:

* Python data analysis
* Exploratory data analysis
* Data visualization
* Power BI dashboard development

Machine learning can be added as a future enhancement if predictive churn analysis is required.

---

# 16. Project Workflow

```text
Customer Churn Dataset
        ↓
Data Loading
        ↓
Data Cleaning
        ↓
Exploratory Data Analysis
        ↓
Python Visualizations
        ↓
Power BI Data Analysis
        ↓
Interactive Dashboard
        ↓
Customer Churn Insights
        ↓
Business Recommendations
```

---

# 17. How to Run the Python Project

### Step 1 — Install Python

Install Python 3.10 or a later compatible version.

### Step 2 — Install Required Libraries

Open Command Prompt or Terminal:

```bash
pip install jupyter pandas numpy matplotlib seaborn
```

### Step 3 — Start Jupyter Notebook

```bash
jupyter notebook
```

### Step 4 — Open the Notebook

Open:

```text
Customer_Churn_Analysis.ipynb
```

### Step 5 — Place the Dataset

Keep the CSV file in the same folder as the notebook:

```text
customer_churn_data.csv
```

### Step 6 — Run the Cells

Run the Python cells from **Step 1 through Step 15** in order.

---

# 18. How to Open the Power BI Dashboard

1. Install Microsoft Power BI Desktop.
2. Open the file:

```text
Customer Churn Dashboard.pbix
```

3. Navigate through the three dashboard pages.
4. Use the slicers to filter the analysis.
5. Explore the charts and KPI cards.

---

# 19. Screenshots

Add screenshots of your Power BI dashboard to this section.

Recommended screenshots:

### Page 1 — Churn Customer Dashboard

```text
Add your Page 1 Power BI screenshot here.
```

### Page 2 — Customer Analysis

```text
Add your Page 2 Power BI screenshot here.
```

### Page 3 — Revenue Analysis

```text
Add your Page 3 Power BI screenshot here.
```

You can upload the images to the GitHub repository and display them using:

---

# 20. Project Documentation

Detailed project documentation is available in:

```text
Customer_Churn_Project_Documentation.docx
```

It contains:

* Project Objective
* Tools and Technologies
* Dataset Description
* Power BI Dashboard
* Python Analysis
* Machine Learning status
* Key Findings
* Conclusion
* Project Deliverables

---

# 21. Conclusion

The Customer Churn Analysis project demonstrates how Python and Power BI can be used together to analyze customer behavior and create meaningful business insights.

Python provides data preparation, exploratory analysis, statistical analysis, and visualization, while Power BI provides an interactive dashboard for monitoring customer churn, customer characteristics, and revenue.

The project provides a structured approach for understanding customer churn and can help businesses identify customer segments that may require additional retention efforts.

---

# 22. Future Enhancements

Possible future improvements include:

* Customer churn prediction using Machine Learning.
* Real-time dashboard updates.
* Automated data refresh.
* Customer risk scoring.
* Advanced customer segmentation.
* Predictive revenue analysis.
* Automated churn alerts.
* Integration with a customer relationship management system.

---

# 23. Author

**Kammineni Venkata Manasa**


Thank you for reviewing the **Customer Churn Analysis** project.
