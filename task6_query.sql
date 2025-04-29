CREATE DATABASE task6;
USE task6;
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-15', 100.00, 101),
(2, '2024-01-20', 200.00, 102),
(3, '2024-02-05', 150.00, 103),
(4, '2024-02-18', 250.00, 101),
(5, '2024-03-01', 300.00, 104),
(6, '2024-03-12', 120.00, 105),
(7, '2024-04-10', 180.00, 106),
(8, '2024-04-25', 220.00, 107);
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
