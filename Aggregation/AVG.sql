-- Find the average sales of all orders

SELECT
COUNT(*) as total_nr_orders,
SUM(sales) as total_sales,
AVG(sales) as avg_sales
FROM orders