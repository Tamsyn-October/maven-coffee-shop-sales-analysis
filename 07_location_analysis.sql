/*
===============================================================================
Product Analysis

Purpose:
Compare the performance of different store locations.

SQL Functions Used:
SUM, COUNT, AVG, GROUP BY, ORDER BY, ROUND
===============================================================================
*/

-- Revenue by location --
SELECT
	store_location,
	ROUND(SUM(transaction_qty * unit_price), 2) AS revenue
FROM SalesDB.dbo.Transactions$
GROUP BY
	store_location
ORDER BY
	revenue DESC;

-- Quantity sold by locations --
SELECT
	store_location,
	SUM(transaction_qty) AS quantity_sold
FROM SalesDB.dbo.Transactions$
GROUP BY
	store_location
ORDER BY
	quantity_sold DESC; 

-- Average transaction value by location --
SELECT
	store_location,
	ROUND(AVG(transaction_qty * unit_price), 2) AS avg_transaction_value
FROM SalesDB.dbo.Transactions$
GROUP BY
	store_location
ORDER BY
	avg_transaction_value DESC;
