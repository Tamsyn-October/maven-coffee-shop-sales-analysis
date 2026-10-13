/*
===============================================================================
Measures Exploration (Key Metrics)

Purpose:
Understand the main numerical measures in the dataset and establish your basic KPIs.

SQL Functions Used:
SUM, AVG, MIN, MAX, COUNT, ROUND
===============================================================================
*/

-- Total quantity of products (transactions) sold
SELECT 
	SUM(transaction_qty) AS total_quantity_sold
FROM SalesDB.dbo.Transactions$

-- Total revenue --
SELECT 
	ROUND(SUM (transaction_qty * unit_price), 2) AS total_revenue
FROM SalesDB.dbo.Transactions$

-- Average transaction value --
SELECT 
	ROUND(AVG (transaction_qty * unit_price), 2) AS average_transaction_value
FROM SalesDB.dbo.Transactions$

-- Minimum and Maximum unit price --
SELECT 
	MIN(unit_price) AS min_price,
	MAX(unit_price) AS max_price
FROM SalesDB.dbo.Transactions$

-- Average quantity per transaction --
SELECT 
	ROUND(AVG(transaction_qty), 2) AS average_qty_per_transaction
FROM SalesDB.dbo.Transactions$