-- Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT 
    Category, SUM(Quantity) AS Quantity
FROM
    pizza_types t
        JOIN
    pizzas p
        JOIN
    order_details o ON t.pizza_type_id = p.pizza_type_id
        AND p.pizza_id = o.pizza_id
GROUP BY Category;

-- Highest selling pizza category- "Classic"


-- Determine the distribution of orders by hour of the day.
SELECT HOUR(order_time) hour, COUNT(order_id) orders FROM orders
GROUP BY hour;

-- Peak hours: 12-1 pm and 5-6 pm


-- Join relevant tables to find the category-wise distribution of pizzas.
SELECT 
    category, COUNT(name) num_of_pizzas
FROM
    pizza_types
GROUP BY category;


-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    ROUND(AVG(qty)) average_orders_per_day
FROM
    (SELECT 
        SUM(quantity) qty
    FROM
        order_details d
    JOIN orders o ON o.order_id = d.order_id
    GROUP BY order_date) AS average_orders;

-- Average orders per day: 138


-- Determine the top 3 most ordered pizza types based on revenue.
SELECT 
    name, ROUND(SUM(price * quantity), 2) Revenue
FROM
    pizzas p
        JOIN
    pizza_types t
        JOIN
    order_details o ON p.pizza_type_id = t.pizza_type_id
        AND p.pizza_id = o.pizza_id
GROUP BY name
ORDER BY Revenue DESC
LIMIT 3;

/* Top 3 pizzas:
The Thai Chicken Pizza
The Barbecue Chicken Pizza
The California Chicken Pizza */
