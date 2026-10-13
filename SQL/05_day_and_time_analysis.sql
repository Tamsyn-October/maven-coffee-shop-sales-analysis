/*
===============================================================================
Days & Time Analysis

Purpose:
Understand which days and times are the busiest and if the same trend holds across locations.

SQL Functions Used:
DAYOFWEEK, DAYNAME, HOUR, SUM, COUNT, GROUP BY, ORDER BY
===============================================================================
*/

-- Total sales (revenue) by day of week --
SELECT 
	DATENAME(weekday, transaction_date) AS day_of_week,
	SUM(transaction_qty) AS quantity_sold,
	ROUND(SUM(transaction_qty * unit_price), 2) AS revenue
FROM SalesDB.dbo.Transactions$
GROUP BY
	DATENAME(weekday, transaction_date)
ORDER BY
	quantity_sold DESC;

-- Total sales by hour of the day --
SELECT 
	DATEPART(HOUR, transaction_time) AS hour,
	SUM(transaction_qty) AS quantity_sold,
	ROUND(SUM(transaction_qty * unit_price), 2) AS revenue
FROM SalesDB.dbo.Transactions$
GROUP BY
	DATEPART(HOUR, transaction_time)
ORDER BY
	hour;

-- Sales by location and hour --
SELECT 
	store_location,
	DATEPART(HOUR, transaction_time) AS hour,
	SUM(transaction_qty) AS quantity_sold,
	ROUND(SUM(transaction_qty * unit_price), 2) AS revenue
FROM SalesDB.dbo.Transactions$
GROUP BY
store_location,
	DATEPART(HOUR, transaction_time)
ORDER BY
store_location,
	hour;