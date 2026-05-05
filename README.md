# Credit Card Transaction & Fraud Risk Analysis

An end-to-end data analysis project covering 1.3 million credit 
card transactions worth $91.2M, built to uncover spending 
behaviour, fraud patterns, and risk indicators across multiple 
categories, states, and time periods.

## Project Overview

This project was built to demonstrate end-to-end data analysis 
skills including data cleaning, SQL-driven business analysis, 
fraud risk analytics, and interactive Power BI dashboard design 
using real-world credit card transaction data.

## Key Findings

- Fraud transactions averaged $531 vs $68 for legitimate ones
- Fraud peaked at 2.88% during late-night hours (highest risk window)
- Alaska recorded the highest state-level fraud rate at 1.70%
- Grocery POS led all categories in transaction value at $14.5M
- 10+ SQL business analyses conducted on fraud rates, seasonal 
  trends, and geographic risk

## Dashboard Preview

![Transaction Dashboard](screenshots/transaction_dashboard.png)
![Fraud Dashboard](screenshots/fraud_dashboard.png)

## What I Built

### Data Cleaning (Python)
- Handled nulls, mismatched categories, and outliers
- Used Pandas, NumPy, Matplotlib, and Seaborn throughout
- Prepared cleaned dataset for SQL analysis and Power BI

### SQL Business Analyses
Conducted 10+ analyses covering:
- Fraud rate by category, state, and time period
- Transaction value distribution (legitimate vs fraudulent)
- Seasonal trends and peak fraud windows
- Geographic risk mapping by state
- Category-level revenue breakdown

### Power BI Dashboards
Built two interactive dashboards:

**Transaction Analysis Dashboard**
- KPI cards for total transactions, total value, average 
  transaction value
- Category-wise transaction volume and value breakdown
- State-level geographic distribution
- Monthly and hourly trend analysis

**Fraud Analysis Dashboard**
- DAX-based fraud rate measures
- Fraud vs legitimate transaction comparison
- Peak fraud time identification
- High-risk state and category flagging
- Interactive slicers for real-time filtering

## Technical Approach

- Performed EDA to understand data distribution before analysis
- Used SQL aggregations for business-level insight generation
- Built DAX measures in Power BI for dynamic fraud rate 
  calculation
- Designed dashboards for leadership review with KPI cards 
  and slicers
- Documented findings as structured insight summaries

## Skills Demonstrated

SQL, Python (Pandas, NumPy, Matplotlib, Seaborn), Power BI, 
DAX, KPI Dashboarding, Fraud Analytics, Risk Indicator 
Analysis, Data Cleaning, EDA, Business Reporting

## Data Source

Dataset sourced from Kaggle:
https://www.kaggle.com/datasets/kartik2112/fraud-detection

Note: Raw dataset and Power BI (.pbix) file are not included 
in this repository due to file size. Please download the 
dataset directly from the Kaggle link above. Dashboard 
screenshots are provided above for reference.

## Author

Abhiram Chiyyarath Devanand
https://linkedin.com/in/abhiramcdev
