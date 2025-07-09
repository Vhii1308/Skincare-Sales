-- Preview the Dataset
SELECT * FROM  `skincare sql` 
LIMIT 10;

-- Total Number of Sales Records
SELECT * FROM `skincare sql`;

-- Unique Product Categories 
SELECT DISTINCT `product category` 
FROM `skincare sql`; 

-- Sales Date Range
SELECT MIN(date) AS first_date,
MAX(date) AS last_date
FROM `skincare sql`;

-- Total Net Revenue
SELECT SUM(`net revenue`) AS total_revenue
FROM `skincare sql`;

-- Total Gross Profit
SELECT SUM(`gross profit`) AS total_gross_profit
FROM `skincare sql`;

-- Average Profit Margin
SELECT AVG(`profit margin`) AS avg_profit_margin
FROM `skincare sql`;

-- Total Quantity Sold
SELECT SUM(`quantity sold`) AS total_quantity
FROM `skincare sql`;

-- Top 5 Products by Revenue
SELECT `product name`, SUM(`net revenue`) AS total_revenue
FROM `skincare sql`
GROUP BY `product name`
ORDER BY total_revenue DESC
LIMIT 5;

-- Bottom 8 Products by Gross Profit
SELECT `product name`, SUM(`gross profit`) AS total_gross_profit
FROM `skincare sql`
GROUP BY `product name`
ORDER BY total_gross_profit ASC
LIMIT 8;

-- Top 3 Cities by Quantity Sold
SELECT city, SUM(`quantity sold`) AS total_sold
FROM `skincare sql`
GROUP BY city
ORDER BY total_sold DESC
LIMIT 3;

-- Sales in Port Harcourt Only
SELECT * FROM `skincare sql`
WHERE city = 'Port Harcourt';

-- High Profit Margin Products
SELECT * FROM `skincare sql`
WHERE `profit margin` > 0.20;

-- Discount Amount Greater Than N6500
SELECT * FROM `skincare sql`
WHERE `discount amount` > 6500;

-- Profit per Product Category
SELECT `product category`, SUM(profit) AS total_profit
FROM `skincare sql`
GROUP BY `product category`
ORDER BY total_profit DESC;

-- Loss Making Transactions
SELECT * FROM `skincare sql`
WHERE `gross profit` < 0;

-- Missing or Empty Profit Values
SELECT * FROM `skincare sql`
WHERE profit IS NULL OR profit = '';

-- Duplicate Transaction IDs
SELECT `transaction id`, COUNT(*)
FROM `skincare sql`
GROUP BY `transaction id`
HAVING COUNT(*) > 1;