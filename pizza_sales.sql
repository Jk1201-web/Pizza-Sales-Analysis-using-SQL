CREATE DATABASE Sales_Performance_Analysis;

USE Sales_Performance_Analysis;

SELECT COUNT(*) FROM order_details;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM pizzas;
SELECT COUNT(*) FROM pizza_types;

-- [A] Basic level
-- 1] Total number of orders

SELECT COUNT(DISTINCT order_id) AS Total_orders
FROM orders;

-- 2] Total Revenue

SELECT SUM(od.quantity * p.price) AS Total_revenue
FROM order_details od
JOIN pizzas p
ON od.pizza_id = p.pizza_id;

-- 3]Total pizza sold 

SELECT SUM(quantity) AS Total_sold
FROM order_details;

-- 4] Avg pizza price

SELECT AVG(price) AS avg_price
FROM pizzas;

-- 5] List of all pizzas category

SELECT COUNT(DISTINCT category) AS pizza_category
FROM pizza_types;

-- [B] Intermediate level

-- 6] Top 5 most ordered pizza by revenue

SELECT 
      pt.name,
      SUM(od.quantity * p.price) AS Revenue
FROM order_details od
JOIN pizzas p 
ON od.pizza_id = p.pizza_id
JOIN pizza_types pt
ON pt.pizza_type_id = p.pizza_type_id
GROUP BY pt.name
ORDER BY Revenue DESC
LIMIT 5;

-- 7] Revenue by category 

SELECT 
      pt.category,
      SUM(od.quantity* p.price) AS Revenue
FROM pizza_types pt
JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od ON p.pizza_id = od.pizza_id
GROUP BY pt.category
ORDER BY Revenue DESC;

-- 8] Orders per day

SELECT 
      date,
      COUNT(order_id) AS total_orders
FROM orders
GROUP BY date
HAVING COUNT(order_id) > 60
ORDER BY total_orders DESC
LIMIT 10;

-- 9] (1) Most expensive pizza / (2) name

-- (1) expensice pizza - price

SELECT MAX(price) AS high_price
FROM pizzas
LIMIT 1;

-- (2) Name of that expensice pizza
SELECT 
      pt.name,
      p.price
FROM pizza_types pt
JOIN pizzas p 
ON pt.pizza_type_id = p.pizza_type_id
WHERE price =
	 (SELECT MAX(price) FROM pizzas
);
           
-- 10] Order by hour 

SELECT 
      HOUR(time) AS per_hour,
	  COUNT(order_id) AS total_orders
FROM orders
GROUP BY per_hour
ORDER BY total_orders;
      
-- [C] Advanced level

-- 1] Top 3 pizza by revenue

SELECT 
      pt.name,
      SUM(od.quantity * p.price) AS Revenue
FROM pizza_types pt
JOIN pizzas p
ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od
ON od.pizza_id = p.pizza_id
GROUP BY pt.name
ORDER BY Revenue DESC
LIMIT 3;

-- 2] Avg order value

SELECT AVG(order_total) AS avg_order_total
FROM
    (SELECT 
           od.order_id,
           SUM(quantity * price) AS order_total
    FROM order_details od
    JOIN pizzas p ON p.pizza_id = od.pizza_id
    GROUP BY od.order_id
) t;

-- 3] Category contributed highest revenue

SELECT 
      pt.category,
      SUM(od.quantity * p.price) AS Revenue
FROM pizza_types pt
JOIN pizzas p 
ON p.pizza_type_id = p.pizza_type_id
JOIN order_details od
ON od.pizza_id = p.pizza_id
GROUP BY category
ORDER BY Revenue DESC 
LIMIT 1;

-- 4] Running total of revenue

SELECT 
      o.date,
      SUM(od.quantity * p.price) AS Daily_revenue,
      SUM(SUM(quantity * price)) OVER(ORDER BY date) AS Running_total
FROM orders o
JOIN order_details od
ON o.order_id = od.order_id
JOIN pizzas p
ON p.pizza_id = od.pizza_id
GROUP BY o.date;









