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

-- Percentage of Sales by Pizza Size

-- Total Pizzas Sold by Pizza Category

-- Top 5 Best Sellers by Revenue

-- Bottom 5 Best Sellers by Revenue

