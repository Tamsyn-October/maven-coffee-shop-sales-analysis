/*
===============================================================================
Sales Trends

Purpose:
Understand revenue and quantity sold across months and days of the week.

SQL Functions Used:
SUM, EXTRACT, MONTH, YEAR, GROUP BY, ORDER BY, ROUND
===============================================================================
*/

-- Monthly revenue --
SELECT 
	YEAR(transaction_date) AS year,
	MONTH(transaction_date) AS month,
	ROUND(SUM(transaction_qty * unit_price), 2) AS revenue
FROM SalesDB.dbo.Transactions$
GROUP BY
	YEAR(transaction_date),
	MONTH(transaction_date)
ORDER BY
	year,
	month

-- Monthly quantity sold --
SELECT 
	YEAR(transaction_date) AS year,
	MONTH(transaction_date) AS month,
	SUM(transaction_qty) AS quantity_sold
FROM SalesDB.dbo.Transactions$
GROUP BY
	YEAR(transaction_date),
	MONTH(transaction_date)
ORDER BY
	year,
	month