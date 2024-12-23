SELECT  *
FROM cleaned_sales_data;

#Total Revenue by Month
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month,
SUM(Total_revenue) AS Total_revenue
FROM cleaned_sales_data
GROUP BY Month
ORDER BY Month;

#Total Revenue by Region
SELECT Region,
SUM(Total_revenue) AS Total_revenue
FROM cleaned_sales_data
GROUP BY Region
ORDER BY Total_revenue DESC;

#Total Revenue by Product
SELECT Product, SUM(Total_revenue) AS Total_revenue
FROM cleaned_sales_data
GROUP BY Product
ORDER BY Total_revenue DESC;

#Top 5 Performing Products
SELECT Product, 
SUM(Total_revenue) AS Total_revenue
FROM cleaned_sales_data
GROUP BY Product
ORDER BY Total_revenue DESC
LIMIT 5;	

#Top Performing Regions
SELECT Region, 
SUM(Total_revenue) AS Total_revenue
FROM cleaned_sales_data
GROUP BY Region
ORDER BY Total_revenue DESC;

