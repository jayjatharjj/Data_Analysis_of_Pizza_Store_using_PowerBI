-- KPI's Requirements

-- Total Revenue: The sum of the total price of all pizza orders.
select sum(total_price) as Total_Revenue from sales;

-- Average Order Value: The average amount spent per order, calculated by dividing the total revenue by the total number of orders.
select sum(total_price)/count(distinct order_id) as Avg_amount_per_order from sales;

-- Total Pizzas Sold: The sum of the quantities of all pizzas sold.
select sum(quantity) as Total_pizza_sold from sales;

-- Total Orders: The total number of orders placed.
select count(distinct order_id) as Total_orders from sales;

-- Average Pizzas Per Order: The average number of pizzas 
-- sold per order, calculated by dividing the total number of pizzas sold by the total number of orders.
select round(count(pizza_name_id)/count(distinct order_id),2) as Avg_pizza_per_order from sales;
