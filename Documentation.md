### Project Documentation

# CUSTOMER CHURN ANALYSIS AND PREDICTION

**Power BI Dashboard • Python Data Analysis**

---

## 1. INTRODUCTION

Customer churn is an important challenge faced by service-based businesses. When customers stop using a service, organizations may experience loss of revenue and increased costs associated with acquiring new customers. Therefore, understanding customer behavior and identifying the factors associated with churn can help businesses develop effective customer-retention strategies.

The **Customer Churn Analysis and Prediction** project is a data analytics solution developed using **Python and Power BI**. The project analyzes customer demographic information, service usage, contract details, payment methods, tenure, and customer charges to identify patterns related to customer churn.

Python is used for data cleaning, preprocessing, exploratory data analysis, statistical analysis, and visualization. Power BI is used to create interactive dashboards that present customer churn, customer characteristics, and revenue-related insights in an easy-to-understand format.

The project can also be extended with a machine learning model to predict customers who may be at risk of leaving the service.

---

# 2. PROJECT OBJECTIVE

The main objective of this project is to analyze customer churn data and identify the factors associated with customers leaving a service.

The specific objectives are:

* To measure the total number of customers.
* To identify active and churned customers.
* To calculate churn rate and retention rate.
* To analyze churn patterns across different customer segments.
* To analyze churn based on gender, tenure, contract, and payment method.
* To study the relationship between customer services and churn.
* To analyze monthly charges and total charges.
* To understand customer characteristics and behavior.
* To create an interactive Power BI dashboard.
* To use Python for data cleaning and exploratory analysis.
* To provide useful business insights for customer retention.
* To optionally predict customers who are at risk of churn using machine learning.

---

# 3. EXISTING SYSTEM

In a traditional customer-management environment, businesses mainly monitor customer information and historical transactions. Customer churn may be identified only after a customer has already stopped using the service.

Traditional analysis may involve manually examining customer records, spreadsheets, reports, or basic statistical summaries. Such approaches can make it difficult to quickly identify relationships between churn and customer characteristics.

The existing approach generally focuses on historical customer information rather than providing an integrated and interactive method for analyzing churn patterns.

---

# 4. DISADVANTAGES OF EXISTING SYSTEM

The major disadvantages of traditional customer churn analysis include:

* Difficult to analyze large customer datasets manually.
* Limited interactive visualization.
* Difficult to identify hidden churn patterns.
* Customer segments may not be easily compared.
* Revenue and churn analysis may be performed separately.
* Manual reporting can consume considerable time.
* Historical analysis may identify churn only after it occurs.
* Difficult to monitor multiple churn-related factors simultaneously.
* Limited support for predictive analysis.
* Business decisions may depend heavily on manual interpretation.

---

# 5. PROPOSED SYSTEM

The proposed system is a **Customer Churn Analysis and Prediction** solution that combines Python-based data analysis with Power BI business intelligence.

The system processes customer-level data containing demographic, service, contract, billing, payment, tenure, and churn information.

Python is used to clean and analyze the dataset and generate exploratory visualizations. The processed information is then used to develop an interactive Power BI dashboard.

The Power BI dashboard is divided into three major analytical areas:

1. Churn Customer Dashboard
2. Customer Analysis
3. Revenue Analysis

The system can additionally be extended with a machine learning model that predicts customers who are likely to churn.

---

# 6. ADVANTAGES OF PROPOSED SYSTEM

The proposed system provides the following advantages:

* Provides a centralized view of customer churn.
* Reduces manual analysis.
* Provides interactive dashboards.
* Makes customer segmentation easier.
* Helps identify churn patterns.
* Allows comparison between different customer groups.
* Provides churn and retention metrics.
* Supports contract and payment-method analysis.
* Provides customer revenue analysis.
* Helps identify customer segments requiring retention attention.
* Uses Python for detailed analytical processing.
* Uses Power BI for interactive business reporting.
* Can be extended with machine learning-based prediction.
* Supports data-driven decision making.

---

# 7. TOOLS AND TECHNOLOGIES

| Technology           | Purpose                                                         |
| -------------------- | --------------------------------------------------------------- |
| **Python**           | Data cleaning, analysis, visualization, and optional prediction |
| **Pandas**           | Data loading, transformation, filtering, and analysis           |
| **NumPy**            | Numerical operations and data processing                        |
| **Matplotlib**       | Data visualization                                              |
| **Seaborn**          | Statistical and categorical visualization                       |
| **Power BI**         | Interactive dashboard and business intelligence                 |
| **DAX**              | Calculated measures and metrics                                 |
| **Jupyter Notebook** | Python development and analysis environment                     |

---

# 8. DATASET DESCRIPTION

The project uses a customer-level churn dataset. Each row represents one customer and contains demographic, service, contract, billing, and churn-related information.

| Attribute           | Description                                        |
| ------------------- | -------------------------------------------------- |
| `customer_id`       | Unique customer identifier                         |
| `gender`            | Customer gender                                    |
| `senior_citizen`    | Indicates whether the customer is a senior citizen |
| `tenure_months`     | Number of months the customer has used the service |
| `partner`           | Indicates whether the customer has a partner       |
| `dependents`        | Indicates whether the customer has dependents      |
| `internet_service`  | Type of internet service                           |
| `online_security`   | Indicates whether online security is subscribed    |
| `online_backup`     | Indicates whether online backup is subscribed      |
| `contract`          | Customer contract type                             |
| `monthly_charges`   | Monthly amount charged to the customer             |
| `total_charges`     | Total accumulated customer charges                 |
| `paperless_billing` | Indicates whether paperless billing is enabled     |
| `payment_method`    | Customer payment method                            |
| `churn`             | Indicates whether the customer has churned         |

Before analysis, the dataset is checked for missing values, duplicate records, incorrect data types, inconsistent categorical values, and invalid numerical values.

---

# 9. SYSTEM ARCHITECTURE

The overall system follows the following architecture:

```text
              CUSTOMER CHURN DATASET
                       │
                       ▼
              DATA COLLECTION
                       │
                       ▼
              DATA PREPROCESSING
             ┌─────────┴─────────┐
             │                   │
             ▼                   ▼
      MISSING VALUE         DUPLICATE &
       CHECKING             DATA TYPE CHECK
             │                   │
             └─────────┬─────────┘
                       ▼
                 DATA CLEANING
                       │
                       ▼
              PYTHON DATA ANALYSIS
                       │
              ┌────────┴────────┐
              ▼                 ▼
       EXPLORATORY DATA     VISUALIZATION
          ANALYSIS
              │                 │
              └────────┬────────┘
                       ▼
                POWER BI REPORT
                       │
          ┌────────────┼────────────┐
          ▼            ▼            ▼
       CHURN        CUSTOMER      REVENUE
      ANALYSIS      ANALYSIS      ANALYSIS
          │            │            │
          └────────────┼────────────┘
                       ▼
                BUSINESS INSIGHTS
                       │
                       ▼
             OPTIONAL ML PREDICTION
```

---

# 10. DATA PREPROCESSING

Data preprocessing is performed before creating visualizations and calculating business metrics.

The following activities are performed:

* Loading the customer dataset.
* Inspecting the first records.
* Checking the number of rows and columns.
* Checking data types.
* Identifying missing values.
* Identifying duplicate records.
* Checking unique categorical values.
* Cleaning categorical values.
* Validating numerical fields.
* Preparing the churn column for analysis.
* Preparing tenure values for segmentation.
* Validating monthly and total charges.

Proper preprocessing ensures that the analysis produces reliable and meaningful results.

---

# 11. PYTHON DATA ANALYSIS

Python is used to independently analyze the customer churn dataset.

The analysis includes:

### 11.1 Dataset Inspection

The dataset is loaded using Pandas and inspected to understand its structure, columns, data types, and dimensions.

### 11.2 Missing Value Analysis

Missing values are identified and handled appropriately before further analysis.

### 11.3 Duplicate Analysis

Duplicate customer records are checked to ensure that customer counts and calculations are not incorrectly affected.

### 11.4 Descriptive Statistics

Descriptive statistics are generated for numerical fields such as:

* Tenure
* Monthly Charges
* Total Charges

### 11.5 Churn Distribution

The overall distribution of churned and retained customers is calculated.

### 11.6 Churn by Gender

Customer churn is compared across different genders.

### 11.7 Churn by Contract

Different contract types are analyzed to identify differences in churn behavior.

### 11.8 Churn by Payment Method

Payment methods are compared based on customer churn.

### 11.9 Churn by Tenure

Customers are analyzed according to their service tenure to understand customer lifecycle behavior.

### 11.10 Churn by Services

Churn is analyzed based on services such as:

* Internet Service
* Online Security
* Online Backup

### 11.11 Charge Analysis

Monthly charges and total charges are analyzed to identify financial patterns associated with customers.

### 11.12 Visualization

Matplotlib and Seaborn are used to create charts that visually represent customer and churn patterns.

---

# 12. POWER BI DASHBOARD

The Power BI report consists of three main pages.

---

## 12.1 PAGE 1 — CHURN CUSTOMER DASHBOARD

This page provides an overview of customer churn.

### Key Metrics

* Total Customers
* Churned Customers
* Churn Rate
* Retention Rate

### Visualizations

* Churned Customers by Gender
* Churn Rate by Gender
* Churned Customers by Payment Method
* Churn Rate by Payment Method
* Churned Customers by Tenure
* Churn Rate by Tenure
* Churn Trend / Churn-related Visual
* Churned Customers by Contract

### Purpose

The page helps identify customer segments with different levels of churn and provides an overall understanding of customer retention.

---

# 12.2 PAGE 2 — CUSTOMER ANALYSIS

This page focuses on customer characteristics and distribution.

### Key Metrics

* Total Customers
* New Customers
* Active Customers
* Average Tenure

### Customer Analysis

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

### Slicers

Relevant slicers are provided to allow interactive filtering and comparison of customer segments.

### Purpose

This page helps users understand the composition and characteristics of the customer base.

---

# 12.3 PAGE 3 — REVENUE ANALYSIS

This page focuses on customer charges and revenue-related information.

### Key Metrics

* Total Revenue
* Average Monthly Charges
* Average Total Charges

### Revenue Visualizations

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

### Purpose

This page helps analyze customer charges and understand revenue patterns across different customer segments.

---

# 13. DAX MEASURES

DAX measures are used in Power BI to calculate important customer and business metrics.

### Total Customers

```DAX
Total Customers = COUNTROWS(CustomerData)
```

### Churned Customers

```DAX
Churned Customers =
CALCULATE(
    COUNTROWS(CustomerData),
    CustomerData[churn] = "Yes"
)
```

### Churn Rate

```DAX
Churn Rate =
DIVIDE(
    [Churned Customers],
    [Total Customers],
    0
)
```

### Retention Rate

```DAX
Retention Rate = 1 - [Churn Rate]
```

### Total Revenue

```DAX
Total Revenue = SUM(CustomerData[total_charges])
```

### Average Monthly Charges

```DAX
Average Monthly Charges =
AVERAGE(CustomerData[monthly_charges])
```

### Average Total Charges

```DAX
Average Total Charges =
AVERAGE(CustomerData[total_charges])
```

The exact formulas may be adjusted according to the actual Power BI table and column names used in the project.

---

# 14. KEY FINDINGS

The final findings are based on the actual results obtained from Python analysis and Power BI.

The analysis focuses on:

* Differences in churn across customer segments.
* Relationship between contract type and churn.
* Relationship between payment method and churn.
* Customer tenure and lifecycle behavior.
* Online security and online backup usage.
* Monthly customer charges.
* Total customer charges.
* Gender-based customer patterns.
* Senior-citizen customer patterns.
* Partner and dependent status.
* Internet service patterns.

The strongest and weakest customer segments are identified based on the actual calculated customer counts and churn rates rather than assumptions.

---

# 15. BUSINESS INSIGHTS

The developed dashboard helps answer important business questions such as:

* How many customers have churned?
* What is the current churn rate?
* What is the customer retention rate?
* Which contract types have higher churn?
* Which payment methods show different churn patterns?
* How does tenure affect customer churn?
* Which services are associated with customer retention?
* Which customer groups generate higher charges?
* How do customer characteristics differ across segments?
* Which customer segments may require retention attention?

These insights can support organizations in developing targeted customer-retention strategies.

---

# 16. MACHINE LEARNING-BASED CHURN PREDICTION

Machine learning can be optionally added to the project to predict whether a customer is likely to churn.

The prediction workflow includes:

1. Data preprocessing.
2. Encoding categorical variables.
3. Selecting relevant features.
4. Separating input and target variables.
5. Splitting data into training and testing sets.
6. Training a classification model.
7. Generating churn predictions.
8. Evaluating model performance.
9. Identifying customers with higher churn probability.

Possible machine learning algorithms include:

* Logistic Regression
* Decision Tree
* Random Forest
* Gradient Boosting

The predictive model can help organizations identify potentially high-risk customers before they actually leave.

---

# 17. ADVANTAGES OF THE DASHBOARD

The Power BI dashboard provides:

* Interactive data exploration.
* Easy comparison of customer segments.
* Visual representation of churn patterns.
* Customer-level analytical perspectives.
* Revenue and charge analysis.
* Contract-based analysis.
* Payment-method analysis.
* Tenure-based analysis.
* Service-based analysis.
* Demographic analysis.
* Dynamic filtering using slicers.
* Easy interpretation of complex customer data.

---

# 18. LIMITATIONS

The project has some limitations:

* Analysis depends on the quality of the available dataset.
* Historical data may not contain every reason for customer churn.
* Correlation between variables does not necessarily indicate causation.
* Prediction accuracy depends on the quality and quantity of training data.
* The dashboard primarily provides analytical insights rather than automatically performing retention actions.
* Real-time churn monitoring requires integration with live customer systems.

---

# 19. FUTURE ENHANCEMENTS

The project can be further improved by adding:

* Machine learning-based churn prediction.
* Customer churn probability scores.
* Low, Medium, and High-risk customer classification.
* Real-time churn monitoring.
* Automated customer-retention alerts.
* Email and SMS notifications.
* CRM system integration.
* Automated Power BI data refresh.
* Advanced customer segmentation.
* Feature importance analysis.
* Predictive revenue-loss analysis.
* Personalized retention recommendations.
* Web-based deployment.
* Cloud-based data processing.

---

# 20. PROJECT DELIVERABLES

The project deliverables include:

1. **Power BI Report (`.pbix`)**

   * Churn Customer Dashboard
   * Customer Analysis
   * Revenue Analysis

2. **Python Notebook (`.ipynb`)**

   * Data cleaning
   * Exploratory data analysis
   * Statistical analysis
   * Data visualization
   * Optional machine learning

3. **Customer Churn Dataset (`.csv`)**

4. **Project Documentation**

---

# 21. CONCLUSION

The **Customer Churn Analysis and Prediction** project demonstrates an end-to-end approach to analyzing customer behavior using Python and Power BI.

Python is used for data preparation, exploratory data analysis, statistical analysis, and visualization, while Power BI is used to present the results through interactive dashboards.

The project analyzes customer churn across demographic characteristics, tenure, contracts, payment methods, services, and customer charges. The three Power BI dashboard pages provide separate views for churn analysis, customer analysis, and revenue analysis.

The interactive nature of the dashboard allows users to filter and compare customer segments and identify patterns that may require customer-retention attention.

The project can also be extended with machine learning techniques to predict customers who are at risk of churn. This can help organizations move from simply analyzing historical churn to proactively identifying potential future churn.

Overall, the project demonstrates how **Python data analysis and Power BI business intelligence** can be combined to transform customer data into meaningful insights that support better business and customer-retention decisions.

---

## 22. PROJECT OUTCOME

The final system provides a structured analytical solution for:

**Customer Data → Data Cleaning → Python Analysis → Churn Analysis → Power BI Dashboard → Business Insights → Optional Churn Prediction**

The project successfully demonstrates the application of data analytics and business intelligence techniques to a real-world customer churn problem.
