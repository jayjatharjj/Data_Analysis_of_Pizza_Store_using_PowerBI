-- CHARTS REQUIREMENT

-- Daily Trend for Total Orders
select dayname(str_to_date(order_date,"%d-%m-%Y")) as day, count(distinct order_id) as Number_of_orders 
from sales
group by dayname(str_to_date(order_date,"%d-%m-%Y"));
  
-- Monthly Trend for Total Orders
select monthname(str_to_date(order_date,"%d-%m-%Y")) as day, count(distinct order_id) as Number_of_orders 
from sales
group by monthname(str_to_date(order_date,"%d-%m-%Y"));

-- Percentage of Sales by Pizza Category
select pizza_category, round((sum(total_price)/(select sum(total_price) from sales))*100,2) as percentage 
from sales
group by pizza_category;

-- Percentage of Sales by Pizza Size
select pizza_size, round((sum(total_price)/(select sum(total_price) from sales))*100,2) as percentage 
from sales
group by pizza_size;

-- Total Pizzas Sold by Pizza Category
select pizza_category, sum(quantity) as Total_sold
from sales
group by pizza_category
order by Total_sold desc;

-- Top 5 Best Sellers by Revenue
select pizza_name, sum(total_price) as revenue
from sales
group by pizza_name
order by revenue desc
limit 5;

-- Bottom 5 Best Sellers by Revenue
select pizza_name, sum(total_price) as revenue
from sales
group by pizza_name
order by revenue
limit 5;
