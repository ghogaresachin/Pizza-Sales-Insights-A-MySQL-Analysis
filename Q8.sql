-- Q8. join the relevent tables to find the category-wise distribution of pizzas.

select category,count(name) from pizza_types
group by category