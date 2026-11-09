# Flipkart E-Commerce Analytics

An end-to-end **E-Commerce Data Analytics project** using Python, SQL, Pandas, NumPy, Matplotlib, and Machine Learning to analyze sales performance, customer behavior, product trends, regional performance, and customer churn.

## 📊 Project Notebook

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/shubhammalvankar22/Flipkart-Ecommerce-Analytics/blob/main/notebooks/Flipkart_Ecommerce_Analysis.ipynb)

**[Open the Project Notebook in Google Colab](https://colab.research.google.com/github/shubhammalvankar22/Flipkart-Ecommerce-Analytics/blob/main/notebooks/Flipkart_Ecommerce_Analysis.ipynb)**

## 📌 Project Overview

This project analyzes e-commerce data containing:

- Orders
- Products
- Customers

The project follows an end-to-end analytics workflow:

**Raw Data → Data Cleaning → Data Preparation → SQL Analysis → Python EDA → Business Analysis → Churn Prediction → Business Recommendations**

The objective is to transform messy transactional data into meaningful business insights that can support decisions related to revenue, customers, products, regions, and retention.

## 🎯 Business Objectives

- Analyze overall sales and revenue performance
- Track monthly revenue and order trends
- Calculate Average Order Value (AOV)
- Analyze cancelled and delivered orders
- Identify high-performing and declining product categories
- Analyze customer purchasing behavior
- Identify customer churn patterns
- Analyze regional and state-level performance
- Compare product and category performance over time
- Identify business risks and opportunities
- Generate data-driven business recommendations

## 🛠️ Technologies Used

### Programming & Analysis

- Python
- Pandas
- NumPy
- Matplotlib
- Jupyter Notebook

### SQL

- SQL
- PostgreSQL

### Machine Learning

- Scikit-learn
- Random Forest Classifier
- Train/Test Split
- ROC-AUC
- ROC Curve
- Feature Importance

### Data Analytics

- Data Cleaning
- Data Transformation
- Exploratory Data Analysis (EDA)
- KPI Analysis
- Customer Segmentation
- RFM Analysis
- Churn Analysis
- Trend Analysis
- Business Analysis

## 📂 Project Structure

```text
Flipkart-Ecommerce-Analytics/
│
├── data/
│   └── raw/
│       ├── orders.csv
│       ├── products.csv
│       └── customers.csv
│
├── notebooks/
│   └── Flipkart_Ecommerce_Analysis.ipynb
│
├── sql/
│   ├── 01_data_quality.sql
│   ├── 02_kpi_analysis.sql
│   ├── 03_sales_analysis.sql
│   ├── 04_customer_analysis.sql
│   ├── 05_product_analysis.sql
│   ├── 06_regional_analysis.sql
│   ├── 07_rfm_analysis.sql
│   ├── 08_churn_analysis.sql
│   └── 09_revenue_driver_analysis.sql
│
├── .env.example
├── .gitignore
└── README.md
```

## 🧹 Data Cleaning

The original datasets contain data-quality issues such as:

- Duplicate records
- Missing values
- Inconsistent categorical values
- Malformed dates
- Invalid numeric values
- Currency symbols
- Incorrect percentages
- Inconsistent IDs
- Inconsistent city and state names
- Inconsistent order status
- Inconsistent payment methods

The **data cleaning and preparation are performed within the Jupyter Notebook**, so a separate cleaned-data folder is not required.

### Cleaning includes

- Removing duplicate records
- Standardizing column names
- Cleaning customer and product IDs
- Parsing and standardizing dates
- Cleaning numeric and currency values
- Handling missing values
- Cleaning discount percentages
- Standardizing order status
- Standardizing payment methods
- Standardizing sales channels
- Cleaning city and state names
- Standardizing product categories
- Preparing data for analysis

## 🔗 Data Preparation

The datasets are connected using common identifiers such as:

- `order_id`
- `product_id`
- `customer_id`

The prepared data is then used for:

- Sales analysis
- Customer analysis
- Product analysis
- Regional analysis
- RFM analysis
- Churn analysis

## 📊 Key KPIs

The project calculates important e-commerce KPIs including:

- Total Revenue
- Total Orders
- Delivered Orders
- Cancel Rate
- Average Order Value (AOV)
- Monthly Revenue
- Monthly Orders
- Product Sales
- Category Revenue
- Regional Revenue
- Customer Purchase Behavior

Revenue analysis considers product price, quantity, and discount, with recognized revenue based on the relevant order status.

## 📈 Python Exploratory Data Analysis

The notebook performs exploratory and business analysis using Python.

### Sales Analysis

- Monthly revenue trends
- Order volume trends
- Delivered order trends
- Average Order Value
- Cancellation analysis

### Product Analysis

- Category performance
- Product-level sales
- High-performing products
- Declining categories
- Mobile and Laptop trends

### Regional Analysis

- State-level performance
- City-level performance
- Revenue comparison across regions

### Customer Analysis

- Purchase behavior
- Customer activity
- Customer segmentation
- RFM analysis
- Churn-related behavior

## 🤖 Customer Churn Prediction

The project includes a machine learning model to identify customers who are more likely to churn.

A **Random Forest Classifier** is used for churn prediction.

### Workflow

```text
Customer Data
      ↓
Feature Engineering
      ↓
Train/Test Split
      ↓
Random Forest
      ↓
Churn Prediction
      ↓
ROC-AUC Evaluation
      ↓
Feature Importance
      ↓
Customer Risk Groups
```

The model is used to understand customer behavior associated with churn risk and support customer retention decisions.

## 🗄️ SQL Analysis

The `sql/` directory contains SQL analysis covering:

1. Data Quality Checks
2. KPI Analysis
3. Sales Analysis
4. Customer Analysis
5. Product Analysis
6. Regional Analysis
7. RFM Analysis
8. Churn Analysis
9. Revenue Driver Analysis

### SQL techniques used

- `SELECT`
- `WHERE`
- `GROUP BY`
- `HAVING`
- `CASE WHEN`
- Aggregate Functions
- `JOIN`
- `CTE`
- Subqueries
- Window Functions

## 💡 Business Recommendations

The analysis is converted into practical business recommendations based on the observed data.

Examples include:

- Focus on declining product categories
- Improve retention of high-risk customers
- Target inactive customers with appropriate offers
- Monitor cancellation trends
- Improve performance in weaker regions
- Focus marketing efforts on high-value customers
- Monitor product-level revenue trends
- Use customer behavior to improve retention strategies

## 🚀 How to Run

### 1. Clone the repository

```bash
git clone https://github.com/shubhammalvankar22/Flipkart-Ecommerce-Analytics.git
cd Flipkart-Ecommerce-Analytics
```

### 2. Install required Python libraries

```bash
pip install pandas numpy matplotlib scikit-learn jupyter
```

### 3. Open Jupyter Notebook

```bash
jupyter notebook
```

Open:

```text
notebooks/Flipkart_Ecommerce_Analysis.ipynb
```

### 4. Run the notebook

Run the notebook from the first cell to the last cell.

The notebook performs the data cleaning, preparation, analysis, visualization, and machine learning workflow.

## 🌐 Google Colab

The notebook can also be opened directly in Google Colab:

**[Open in Google Colab](https://colab.research.google.com/github/shubhammalvankar22/Flipkart-Ecommerce-Analytics/blob/main/notebooks/Flipkart_Ecommerce_Analysis.ipynb)**

## 📌 Project Outcome

This project demonstrates an end-to-end analytics workflow from handling messy e-commerce data to generating business insights and building a customer churn prediction model.

It combines:

**Python + SQL + Data Cleaning + EDA + Machine Learning + Business Analysis**

into one practical e-commerce analytics project.

## 👤 Skills Demonstrated

- Python
- SQL
- PostgreSQL
- Pandas
- NumPy
- Matplotlib
- Scikit-learn
- Data Cleaning
- Data Transformation
- Exploratory Data Analysis
- KPI Development
- Business Analytics
- Customer Analytics
- RFM Analysis
- Churn Prediction
- Random Forest
- Feature Engineering
- Data-Driven Decision Making

## 🔗 Repository

**GitHub:**  
https://github.com/shubhammalvankar22/Flipkart-Ecommerce-Analytics
