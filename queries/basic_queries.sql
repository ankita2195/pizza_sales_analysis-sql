-- Retrieve the total number of orders placed.
SELECT count(*) AS total_orders FROM orders;

-- Total number of orders were 21350


-- Calculate the total revenue generated from pizza sales. 
SELECT ROUND(SUM(price*quantity),2) AS total_revenue FROM pizzas p
RIGHT JOIN order_details o
ON p.pizza_id = o.pizza_id;

-- Total Revenue generated was 817860.05


-- Identify the highest-priced pizza.
SELECT name AS highest_priced_pizza
FROM pizzas p JOIN pizza_types t
ON p.pizza_type_id = t.pizza_type_id
WHERE price = (SELECT MAX(price) FROM pizzas);

-- The highest priced pizza was "The Greek Pizza"
  

-- Identify the most common pizza size ordered.
SELECT size, COUNT(order_details_id) FROM pizzas p
RIGHT JOIN order_details o
ON p.pizza_id = o.pizza_id
GROUP BY size
ORDER BY COUNT(order_details_id) DESC LIMIT 1;

-- Most common size was Large.


-- List the top 5 most ordered pizza types along with their quantities.
SELECT name, SUM(Quantity) AS Quantity
FROM pizza_types t
JOIN pizzas p
JOIN order_details o 
ON t.pizza_type_id = p.pizza_type_id 
AND p.pizza_id = o.pizza_id
GROUP BY name
ORDER BY Quantity DESC
LIMIT 5;

/* Top 5 pizzas were: 
The Classic Deluxe Pizza
The Barbecue Chicken Pizza
The Hawaiian Pizza
The Pepperoni Pizza
The Thai Chicken Pizza /*

