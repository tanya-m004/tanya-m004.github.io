CREATE DATABASE pizza_hut;

--Retrieve the total number of orders placed.
select count(order_id) as total_orders from orders;

--Calculate the total revenue generated from pizza sales.
select round(sum(order_details.quantity * pizzas.price),2) as total_revenue
from order_details join pizzas
on pizzas.pizza_id = order_details.pizza_id

--Identify the highest-priced pizza.
select Top 1 pizza_types.name, pizzas.price
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
order by pizzas.price desc;

--Identify the most common pizza size ordered.
select pizzas.size, count(order_details.order_details_id) as order_count
from pizzas join order_details 
on pizzas.pizza_id=order_details.pizza_id
group by pizzas.size
order by order_count desc;

--List the top 5 most ordered pizza types along with their quantities.
select top 5 pizza_types.name, sum(order_details.quantity) as total_quantity
from pizza_types join pizzas 
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.name
order by total_quantity desc;

--Total quantity of each pizza category ordered
SELECT
    pt.category,
    SUM(od.quantity) AS total_quantity
FROM order_details od
JOIN pizzas p
    ON od.pizza_id = p.pizza_id
JOIN pizza_types pt
    ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY total_quantity DESC;

--Distribution of orders by hour of the day
SELECT
    DATEPART(HOUR, orders.time) AS order_hour,
    COUNT(orders.order_id) AS total_orders
FROM orders
GROUP BY DATEPART(HOUR, orders.time)
ORDER BY order_hour;

--Category-wise distribution of pizzas (Number of pizza types in each category)
SELECT
    category,
    COUNT(name) AS pizza_count
FROM pizza_types
GROUP BY category
ORDER BY pizza_count DESC;

--Average number of pizzas ordered per day
WITH DailyOrders AS
( SELECT
        o.date,
        SUM(od.quantity) AS total_pizzas
    FROM orders o
    JOIN order_details od
        ON o.order_id = od.order_id
    GROUP BY o.date )
SELECT
    AVG(CAST(total_pizzas AS FLOAT)) AS avg_pizzas_per_day
FROM DailyOrders;

--Top 3 most ordered pizza types based on revenue
SELECT TOP 3 pt.name,
    SUM(od.quantity * p.price) AS revenue
FROM order_details od
JOIN pizzas p
    ON od.pizza_id = p.pizza_id
JOIN pizza_types pt
    ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY revenue DESC;

--Percentage contribution of each pizza type to total revenue
WITH RevenueByPizza AS
( SELECT
        pt.name,
        SUM(od.quantity * p.price) AS revenue
    FROM order_details od
    JOIN pizzas p
        ON od.pizza_id = p.pizza_id
    JOIN pizza_types pt
        ON p.pizza_type_id = pt.pizza_type_id
    GROUP BY pt.name )

SELECT name, revenue,
    ROUND( revenue * 100.0 / SUM(revenue) OVER (),2) AS percentage_contribution
FROM RevenueByPizza
ORDER BY revenue DESC;

--Cumulative revenue generated over time
WITH DailyRevenue AS
( SELECT o.date,
        SUM(od.quantity * p.price) AS revenue
    FROM orders o
    JOIN order_details od
        ON o.order_id = od.order_id
    JOIN pizzas p
        ON od.pizza_id = p.pizza_id
    GROUP BY o.date )

SELECT date, revenue,
    SUM(revenue) OVER (
        ORDER BY date) AS cumulative_revenue
FROM DailyRevenue;


--Top 3 pizza types by revenue within each category
WITH PizzaRevenue AS
( SELECT
        pt.category,
        pt.name,
        SUM(od.quantity * p.price) AS revenue
    FROM order_details od
    JOIN pizzas p
        ON od.pizza_id = p.pizza_id
    JOIN pizza_types pt
        ON p.pizza_type_id = pt.pizza_type_id
    GROUP BY
        pt.category,
        pt.name),
RankedRevenue AS
( SELECT *,
           RANK() OVER
           ( PARTITION BY category
               ORDER BY revenue DESC ) AS rank_no
    FROM PizzaRevenue)
SELECT
    category,
    name,
    revenue
FROM RankedRevenue
WHERE rank_no <= 3
ORDER BY category, revenue DESC;