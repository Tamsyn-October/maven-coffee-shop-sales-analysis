
/*
===============================================================================
Dimensions Exploration

Purpose:
Understand the categories/dimensions in the dataset before analysing them.
	
SQL Functions Used:
DISTINCT, COUNT, GROUP BY, ORDER BY
===============================================================================
*/

-- Explore store locations --
SELECT DISTINCT
	store_location
FROM SalesDB.dbo.Transactions$

-- Count transactions by location --
SELECT 
	store_location,
	COUNT(*) AS transactions
FROM SalesDB.dbo.Transactions$
GROUP BY store_location
ORDER BY transactions DESC;

-- Explore product categories --
SELECT DISTINCT
	product_category
FROM SalesDB.dbo.Transactions$;

-- Explore product types --
SELECT DISTINCT
	product_type
FROM SalesDB.dbo.Transactions$;

-- Count number of products by category --
SELECT 
	product_category,
	COUNT(DISTINCT product_type) AS number_of_products
FROM SalesDB.dbo.Transactions$
GROUP BY product_category
ORDER BY number_of_products DESC;
