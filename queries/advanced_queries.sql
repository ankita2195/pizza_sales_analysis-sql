
-- Calculate the percentage contribution of each pizza type to total revenue.
SELECT category, ROUND(SUM(price*quantity) / (SELECT ROUND(SUM(price*quantity),2) AS total_revenue FROM pizzas p
RIGHT JOIN order_details o
ON p.pizza_id = o.pizza_id)* 100, 2) AS percentage_revenue 
FROM pizzas p
JOIN order_details o
JOIN pizza_types t
ON p.pizza_id = o.pizza_id
AND t.pizza_type_id = p.pizza_type_id
GROUP BY category;

-- Highest contributor (category) to revenue: Classic


-- Analyze the cumulative revenue generated over time.

SELECT order_date, SUM(revenue) OVER (ORDER BY order_date) cumulative_revenue 
FROM (SELECT order_date, ROUND(SUM(price*quantity),2) revenue
FROM orders o
JOIN pizzas p
JOIN order_details d
ON p.pizza_id = d.pizza_id 
AND o.order_id = d.order_id
GROUP BY order_date) AS total_revenue;

