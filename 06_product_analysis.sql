/*
===============================================================================
Product Analysis

Purpose:
Understand which products are sold most and least often, and when generate most revenue.

SQL Functions Used:
SUM, COUNT, ROUND, GROUP BY, ORDER BY
===============================================================================
*/

-- Most and Least sold products --
SELECT 
	product_type,
	SUM(transaction_qty) AS quantity_sold
FROM SalesDB.dbo.Transactions$
GROUP BY
	product_type
ORDER BY
	quantity_sold DESC;

-- Revenue by product --
SELECT 
	product_type,
	ROUND(SUM(transaction_qty * unit_price), 2) AS revenue
FROM SalesDB.dbo.Transactions$
GROUP BY
	product_type
ORDER BY
	revenue DESC;

-- Revenue by product category --
SELECT 
	product_category,
	ROUND(SUM(transaction_qty * unit_price), 2) AS revenue
FROM SalesDB.dbo.Transactions$
GROUP BY
	product_category
ORDER BY
	revenue DESC;