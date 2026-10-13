/*
===============================================================================
Date Range Exploration 

Purpose:
Understand the time period covered by the dataset and how much data you have.

SQL Functions Used:
MIN, MAX, COUNT, DATEDIFF
===============================================================================
*/

-- Determine the first and last transaction date --
SELECT 
	MIN(transaction_date) AS first_date,
	MAX(transaction_date) AS last_date
FROM SalesDB.dbo.Transactions$

-- Determine the number of days covered --
SELECT 
	DATEDIFF(day, MIN(transaction_date), MAX(transaction_date)) AS days_covered
FROM SalesDB.dbo.Transactions$

-- Count the number of transactions --
SELECT
	COUNT(*) AS total_transactions
FROM SalesDB.dbo.Transactions$