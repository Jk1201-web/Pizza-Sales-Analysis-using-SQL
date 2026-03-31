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
## Problem Statement
#### The business wants to understand:
1.  Which products drive the most revenue?
2.  When are peak sales periods?
3.  How customers behave in ordering?
4.  Which categories perform best?
## Key Business Questions Solved
1.  What is the total revenue and total orders?
2.  Which pizzas generate the highest revenue?
3. What are the peak order days and hours?
4. How does revenue grow over time?
5. Which category contributes the most to revenue?
## Tools & Skills Used
- SQL
- Joins (INNER JOIN)
- Aggregations (SUM, COUNT, AVG)
- Window Functions (RANK, SUM OVER)
- Data Analysis
- Business Insight Generation
## SQL Techniques Used
| Category | Concepts |
|------|------|
| Data Retrieval | SELECT, WHERE |
| Joins	| INNER JOIN (3+ tables) |
| Aggregation |	SUM, COUNT, AVG |
| Grouping | GROUP BY, HAVING |
| Advanced | Window Functions (RANK, SUM OVER) |
| Optimization | Subqueries |
## Key Metrics
| Matrics | Values |
|------|------|
| Total Orders | 21,350 |
| Total Revenue |	₹817,860 |
| Total Pizzas | Sold	49,574 |
| Average Order Value |	₹38.3 |
| Total Categories | 4 |
## Key Insights
### Product Insights
- Top revenue-generating pizza: **Thai Chicken Pizza (~₹43K)**
- Top 3 pizzas are all chicken-based, indicating strong customer preference
- Revenue is concentrated among a few high-performing products
### Category Insights
- **Classic category** generated the **highest revenue (~₹220K)**
- Balanced revenue contribution across all categories
### Time-Based Insights
- Peak hours: **12 PM – 2 PM** (Lunch) & **5 PM – 8 PM** (Evening)
- Highest daily orders reached 115 **(≈2x average demand)**
- Early mornings and late nights show lower activity
### Revenue Trend Analysis
- Used **window functions** to calculate cumulative revenue (running total)
- Observed **steady business growth** with periodic spikes
- Highest daily revenue exceeded **₹4,400**
## How to Run
1. Import dataset into MySQL / PostgreSQL
2. Create tables using provided schema
3. Run SQL queries step-by-step
4. Analyze results and derive insights























  
