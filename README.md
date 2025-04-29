# Task 6: Sales Trend Analysis Using Aggregations

## ✅ Objective
Analyze monthly revenue and order volume from an online sales dataset using SQL aggregation functions.

## 🛠 Tools Used
- MySQL Workbench
- SQL (Structured Query Language)

## 📂 Dataset Structure (Table: `online_sales`)
- `order_id` (INT) – Unique identifier for each order
- `order_date` (DATE) – Date the order was placed
- `amount` (DECIMAL) – Total price of the order
- `product_id` (INT) – Product reference

## 🧠 What I Did
- Extracted `YEAR()` and `MONTH()` from `order_date`.
- Used `SUM(amount)` to calculate total monthly revenue.
- Used `COUNT(DISTINCT order_id)` to count order volume.
- Grouped and sorted data by year and month.

## 📈 Output
The result shows total revenue and order volume for each month of 2024.

Included output as:  
📄 `sales_trend_analysis.csv`

## 💻 SQL Query Used
```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;
