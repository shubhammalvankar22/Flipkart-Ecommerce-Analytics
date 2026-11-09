# Flipkart E-Commerce Analytics

An end-to-end **E-Commerce Data Analytics project** using Python, SQL, Pandas, NumPy, Matplotlib, and Machine Learning to analyze sales performance, customer behavior, product trends, regional performance, and customer churn.

## 📌 Project Overview

This project analyzes e-commerce data containing orders, products, and customer information.

The project follows a complete analytics workflow:

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
- Analyze regional/state-level performance
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

### Data Analysis
- Data Cleaning
- Data Transformation
- Exploratory Data Analysis (EDA)
- KPI Analysis
- Customer Segmentation
- Churn Analysis
- Trend Analysis
- Business Analysis

## 📂 Project Structure

```text
Flipkart-Ecommerce-Analytics/
│
├── data/
│   ├── raw/
│   │   ├── orders.csv
│   │   ├── products.csv
│   │   └── customers.csv
│   │
│   └── cleaned/
│       ├── orders_clean.csv
│       ├── products_clean.csv
│       └── customers_clean.csv
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
├── clean_data.py
├── requirements.txt
├── .gitignore
└── README.md
```

## 🧹 Data Cleaning

The original datasets contain duplicate records, missing values, inconsistent categorical values, malformed dates, invalid numeric values, currency symbols, incorrect percentages, and inconsistent IDs.

The `clean_data.py` script performs the main preprocessing steps before analysis.

### Cleaning includes

- Removing duplicate records
- Removing unnecessary columns
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
- Standardizing customer attributes
- Saving cleaned datasets for analysis

### Run the cleaning pipeline

```bash
python clean_data.py
```

The cleaned datasets are generated in:

```text
data/cleaned/
```

## 🔗 Data Preparation

The cleaned datasets are combined using common identifiers:

- `order_id`
- `product_id`
- `customer_id`

The combined dataset is used for sales, customer, product, regional, and churn analysis.

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

Revenue is calculated using product price, quantity, and discount. Revenue from non-delivered orders is excluded from recognized revenue.

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

- Data quality checks
- KPI analysis
- Sales analysis
- Customer analysis
- Product analysis
- Regional analysis
- RFM analysis
- Churn analysis
- Revenue-driver analysis

SQL techniques used include:

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
git clone https://github.com/your-username/Flipkart-Ecommerce-Analytics.git
cd Flipkart-Ecommerce-Analytics
```

### 2. Install dependencies

```bash
pip install -r requirements.txt
```

### 3. Run data cleaning

```bash
python clean_data.py
```

### 4. Open Jupyter Notebook

```bash
jupyter notebook
```

Open:

```text
notebooks/Flipkart_Ecommerce_Analysis.ipynb
```

Run the notebook from beginning to end.

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
- Data Cleaning
- Exploratory Data Analysis
- Data Transformation
- KPI Development
- Business Analytics
- Customer Analytics
- RFM Analysis
- Churn Prediction
- Random Forest
- Feature Engineering
- Data-Driven Decision Making
