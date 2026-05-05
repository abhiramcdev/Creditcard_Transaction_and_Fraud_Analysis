CREATE DATABASE credit_card_analysis;
USE credit_card_analysis;

select * FROM transactions;

#1. Total Revenue
SELECT SUM(amount) AS 'Total Revenue' FROM transactions;

#2. Average Transaction Value
SELECT AVG(amount) AS 'Average Revenue' FROM transactions;

#3. Total Transactions
SELECT COUNT(*) AS 'Total Transactions' FROM transactions;

#4. Fraud Distribution
SELECT fraud_label, count(fraud_label) AS 'Total Instance' FROM transactions
GROUP BY fraud_label;

#5. Fraud Percentage
SELECT COUNT(CASE WHEN is_fraud = 1 then 1 END) * 100 / COUNT(*) AS 'Fraud Percentage' FROM transactions;

#6. Fraud by Category
SELECT category, 
COUNT(*) AS 'Total Transactions',
SUM(is_fraud) AS fraud_count,
(SUM(is_fraud) * 100 / COUNT(*)) AS fraud_rate 
FROM transactions
GROUP BY category
ORDER BY fraud_rate DESC;

#7. Spending Analysis
SELECT category,
SUM(amount) AS Total_Spend
FROM transactions
GROUP BY category
ORDER BY Total_Spend DESC;

#8. Monthly Trend
SELECT year, month, SUM(amount) AS Monthly_Spend FROM transactions
GROUP BY year, month
ORDER BY year, month;

#9. Hourly Fraud Trend
SELECT hour,
AVG(is_fraud) * 100 AS fraud_rate
FROM transactions
GROUP BY hour
ORDER BY fraud_rate DESC;


#10. Transactions by Hour
SELECT hour,
COUNT(*) AS total_transactions
FROM transactions
GROUP BY hour
ORDER BY hour;

#11. Top Customers
SELECT city,
SUM(amount) AS total_spend
FROM transactions
GROUP BY city
ORDER BY total_spend DESC
LIMIT 10;

#12. Gender Analysis
SELECT gender,
AVG(amount) AS avg_spend
FROM transactions
GROUP BY gender;

#12. Distance vs Fraud
SELECT is_fraud,
AVG(distance_km) AS avg_distance
FROM transactions
GROUP BY is_fraud;

#13. High Risk Transactions
SELECT transaction_date_time, merchant, category, amount, gender, city, state, job, fraud_label FROM transactions
WHERE amount > 1000 AND is_fraud = 1;

#14. Top Fraud Locations
SELECT state,
SUM(is_fraud) AS fraud_cases
FROM transactions
GROUP BY state
ORDER BY fraud_cases DESC
LIMIT 10;