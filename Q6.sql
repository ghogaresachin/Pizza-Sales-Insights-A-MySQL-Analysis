-- Q6. Join the necessary tables to find the total quantity of each pizza category.

select pizza_types.category,sum(order_details.quantity) as order_quantity
from pizza_types 
join pizzas on pizzas.pizza_type_id=pizza_types.pizza_type_id
join order_details on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.category 
order by order_quantity Desc ;