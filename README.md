# 💄 Skincare Sales SQL Analysis

An SQL-based data analysis project exploring sales performance in a skincare business using MySQL. This project focuses on generating insights through real-world business questions, written as SQL queries and organized for portfolio presentation.

---

## 📦 Dataset

The dataset is a cleaned version of real sales data from a skincare business. It contains:

- Product names
- Product categories
- Quantity sold
- Unit cost & selling price
- Discount Amount
- Net revenue
- Gross profit
- Profit margin
- City
- Sale date
- Transaction ID

---

## 🎯 Project Objectives

-  Understand overall sales performance
-  Identify top- and bottom-performing products
-  Uncover profitable cities and time periods
-  Detect discount-heavy or loss-making transactions
-  Perform data quality and duplicate checks

---

## 🧠 Key SQL Concepts Used

- SELECT, WHERE, ORDER BY, GROUP BY, HAVING
- Aggregation: `SUM()`, `AVG()`, `MIN()`, `MAX()`
- String and date functions: `DATE_FORMAT()`, `DAYNAME()`
- Aliases, filtering, and joins (if applicable)

---

## 🧾 SQL Queries (20 Operations)

1. Preview dataset  
2. Count total transactions  
3. Unique product categories  
4. Sales date range 
5. Calculate total net revenue  
6. Calculate total gross profit  
7. Find average profit margin  
8. Sum quantity sold  
9. Top 5 products by revenue  
10. Bottom 8 products by gross profit  
11. Top 3 cities by sales volume   
12. Filter sales by Port Harcourt  
13. Products with high profit margin  
14. Transactions with ₦6500+ discounts  
15. Profit by product category  
16. Loss-making transactions  
17. Missing/empty profit values  
18. Duplicate transaction IDs

---

## 💡 Sample Query

```sql
SELECT product_name, SUM(net_revenue) AS total_revenue
FROM skincare_sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;
