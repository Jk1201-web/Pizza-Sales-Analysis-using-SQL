# Pizza-Sales-Analysis-using-SQL
## Overview
This project performs an in-depth analysis of a pizza sales dataset to extract **actionable business insights** using **MySQL**.
It demonstrates real-world data analyst skills including **data cleaning, transformation, KPI analysis, and trend discovery**.
## Objectives
- Analyze overall business performance
- Identify top-selling and high-revenue products
- Understand customer ordering patterns
- Detect peak sales days and hours
- Perform category-level and time-based analysis
## Dataset
The dataset consists of multiple relational tables
## Data Model (Relational Structure)
orders (order_id, date, time)
        ↓
order_details (order_id, pizza_id, quantity)
        ↓
pizzas (pizza_id, price, size)
        ↓
pizza_types (pizza_type_id, name, category) 
