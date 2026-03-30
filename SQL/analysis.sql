- Performance globale
  
SELECT 
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(AVG(Discount),2) AS avg_discount
FROM sales_data;

- Profit par catégorie
  
SELECT 
    Category,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_data
GROUP BY Category
ORDER BY total_profit DESC;

-- Profit par sous-catégorie
SELECT 
    Sub_Category,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_data
GROUP BY Sub_Category
ORDER BY total_profit ASC;

- Impact du discount
  
SELECT 
    Discount,
    ROUND(AVG(Profit),2) AS avg_profit
FROM sales_data
GROUP BY Discount
ORDER BY Discount;

- Profit par région
SELECT 
    Region,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_data
GROUP BY Region
ORDER BY total_profit DESC;

- Ventes par sous-catégorie

SELECT 
    Sub_Category,
    ROUND(SUM(Sales),2) AS total_sales
FROM sales_data
GROUP BY Sub_Category
ORDER BY total_sales DESC;
