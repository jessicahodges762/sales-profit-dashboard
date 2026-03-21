-- Sales & Profit Performance Dashboard
-- Dataset: Superstore
-- Purpose: Explore sales, profit, product performance, and discount patterns

-- 1. Overall business metrics
SELECT 
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit,
  COUNT(DISTINCT [Order ID]) AS total_orders
FROM superstore_sales;

-- 2. Sales and profit by category
SELECT 
  Category,
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY Category
ORDER BY total_sales DESC;

-- 3. Sales and profit by sub-category
SELECT 
  [Sub-Category],
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY [Sub-Category]
ORDER BY total_profit;

-- 4. Identify loss-making sub-categories
SELECT 
  [Sub-Category],
  ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY [Sub-Category]
HAVING SUM(Profit) < 0
ORDER BY total_profit;

-- 5. Regional performance
SELECT 
  Region,
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY Region
ORDER BY total_sales DESC;

-- 6. Top customers by sales
SELECT 
  [Customer Name],
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY [Customer Name]
ORDER BY total_sales DESC
LIMIT 10;

-- 7. Monthly sales and profit trend
SELECT 
  strftime('%Y-%m', [Order Date]) AS order_month,
  ROUND(SUM(Sales), 2) AS monthly_sales,
  ROUND(SUM(Profit), 2) AS monthly_profit
FROM superstore_sales
GROUP BY strftime('%Y-%m', [Order Date])
ORDER BY order_month;

-- 8. Discount vs profit by sub-category
SELECT 
  [Sub-Category],
  ROUND(AVG(Discount), 2) AS avg_discount,
  ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY [Sub-Category]
ORDER BY avg_discount DESC;

-- 9. Focused view of dashboard sub-categories
SELECT 
  [Sub-Category],
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
WHERE [Sub-Category] IN (
  'Tables',
  'Bookcases',
  'Supplies',
  'Copiers',
  'Phones',
  'Accessories'
)
GROUP BY [Sub-Category]
ORDER BY total_profit;