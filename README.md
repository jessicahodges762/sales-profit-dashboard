# sales-profit-dashboard
📊 Sales & Profit Performance Dashboard

This project analyzes sales and profitability using the Superstore dataset to identify key revenue drivers and uncover loss-making product segments.

🔍 Overview

The goal of this project was to explore business performance across multiple dimensions, including time, product categories, and profitability, and present findings through an executive-style dashboard.

The analysis highlights areas where high revenue does not necessarily translate to profit, providing insight into potential pricing or cost inefficiencies.

📈 Key Metrics

- Total Sales: $2.3M

- Total Profit: $286.4K

- Total Orders: 5K

- Average Order Value: $459

🚨 Key Insights

The Tables sub-category generated over $200K in sales but resulted in a loss of $17.7K, indicating potential issues with pricing or discounting strategies.

While higher discounts are associated with lower profitability in some cases, the relationship is not consistent across all categories, suggesting additional cost factors may be involved.

Sales and profit both show an overall upward trend over time, though profit exhibits greater volatility.

🛠️ Tools Used

- SQL (SQLite) – data exploration and aggregation

- Tableau – dashboard development and visualization

- Excel/CSV – data source

  🧠 SQL Analysis

Key queries were used to:

Aggregate total sales and profit

Identify top and bottom performing sub-categories

Analyze the relationship between discount and profitability

Example:
SELECT 
  [Sub-Category],
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY [Sub-Category]
ORDER BY total_profit;

📊 Dashboard

🚀 Project Highlights

Built an executive-style dashboard to communicate business performance

Identified loss-making segments despite strong revenue

Applied data storytelling principles to highlight actionable insights
