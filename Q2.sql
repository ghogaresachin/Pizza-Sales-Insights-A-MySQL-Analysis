-- Q2. Calculate the total revenue generated from pizza sales.


SELECT 
    ROUND(SUM(pizzas.price * order_details.quantity),
            2) AS Total_Sales
FROM
    pizzas
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
