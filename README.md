# 🍕 Pizza Sales Analysis | SQL Case Study

## Executive Summary
Using MySQL, I explored over 10–15 queries (basic → advanced) to evaluate revenue streams, customer preferences, and operational patterns for a pizza restaurant, to uncover key business insights, ranging from basic performance metrics to advanced revenue breakdowns. 
The analysis provides actionable insights for menu optimization, demand forecasting, and improved business decision-making.

---

## Business Problem
Completed pizza orders are the backbone of revenue for this restaurant chain. However, business stakeholders noticed that despite high order volumes, overall revenue growth was below expectations. Questions were raised about which pizza types, sizes, and categories are truly driving sales, and whether customer demand fluctuates across times of the day.

The challenge was:
- Which pizzas generate the most revenue vs. which are just popular by volume?
- Are we stocking the right sizes and categories to maximize profit?
- When are customers most likely to place orders, and how can we optimize for peak hours?
By answering these, management could optimize the menu, adjust inventory, create targeted promotions that encourage higher-value orders and improve revenue conversion.  

---

## Methodology
- SQL Queries – Extract, clean, and transform raw sales data from multiple tables using Joins, Subqueries, and Aggregate Functions.
- Exploratory Data Analysis (EDA) – Answer business-critical questions on sales volume, revenue, pizza size distribution, and category performance through structured SQL queries.
- Revenue Funnel Analysis – Simulate customer ordering behavior (pizza type → size → category → time of day) to uncover bottlenecks and opportunities for growth. 

---

## Skills & Tools
- **SQL (MySQL):**
  - Aggregations (`SUM`, `COUNT`, `AVG`)
  - Joins across multiple tables
  - Subqueries & Nested Queries
  - Window functions for cumulative revenue   

---

## Results & Business Recommendations
The analysis revealed that while Large-sized pizzas dominate order volume, premium specialty pizzas such as Thai Chicken generate the highest revenue contribution. Evening orders also exceeded morning orders by ~20%, suggesting time-based promotional opportunities.

Because the biggest revenue impacts are likely to come from optimizing menu mix, encouraging higher-value orders, and targeting peak demand windows, I recommend:
- **Promotions for Premium Pizzas** – Highlight high-revenue pizzas on menus/apps to boost upselling.
- **Combo Deals with Large Pizzas** – Since Large pizzas are already the most popular, bundling them with sides/drinks can increase Average Order Value (AOV).
- **Peak Hour Campaigns** – Launch special offers (e.g., “Lunch Combo Deals” or “Evening Happy Hour”) during 12–1 PM and 5–6 PM to maximize sales.
- **Category Optimization** – Reduce inventory of underperforming categories and focus on consistently high-selling categories.

These adjustments would not only increase conversion and revenue per customer but also streamline operations and inventory planning.

---

## Next Steps & Limitations
**Next Steps:**
- Dynamic Pricing – Experiment with price sensitivity for premium pizzas and measure the impact on revenue.
- Customer Segmentation – Use historical data to segment customers by order preferences and run targeted marketing campaigns.
- Cross-Sell Analytics – Track which sides or drinks are commonly ordered with top pizzas to create personalized bundles.
- Operational Insights – Integrate delivery time & customer feedback data to further refine service quality and satisfaction.

⚠️ **Limitations:**
- Dataset lacks customer demographics and marketing data  
- Seasonal variations not captured (single dataset period)  

---

## Repository Structure
- `queries/` → Contains SQL scripts (basic, intermediate, advanced)  
- `results/` → CSV outputs and charts generated from queries  
- `Pizza_Sales_Insights.pdf` → (Optional) Business presentation summarizing findings  

---

