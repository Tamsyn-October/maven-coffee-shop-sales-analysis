# Maven Coffee Shop Sales Analysis

An end-to-end sales analysis project using Excel, SQL and Power BI to explore sales trends, product performance and store activity.

## Project Overview

This project analyses coffee shop transaction data to identify sales patterns and provide insights that can support business and operational decisions.

The workflow covers data preparation and validation in Excel, exploratory and business-focused analysis using SQL, and an interactive dashboard built in Power BI.

## Business Objectives

- Understand revenue and transaction trends over time.
- Identify the strongest sales days and times.
- Explore product and product category performance.
- Compare performance across store locations.
- Translate findings into practical recommendations for stock planning, staffing and sales monitoring.

## Tools Used

- Microsoft Excel - data cleaning, calculated columns, totals and PivotTable validation.
- SQL - data exploration, aggregation and analysis.
- Power BI - data modelling, DAX measures, visualisation and interactive reporting.
- Notion - project documentation.

## Project Workflow

### 1. Excel - Data Preparation and Validation

The workbook contains four sheets:

- `raw_transactions` — review dataset.
- `clean_transactions` — prepared transaction data.
- `analyse_transactions` — additional calculated columns and key totals.
- `pivot` — PivotTable summaries used to cross-check totals against Power BI.

### 2. SQL - Data Analysis

The SQL analysis is organised into seven scripts:

1. `01_date_range_explore.sql` — dataset date range.
2. `02_dimensions_explore.sql` — available dimensions and categories.
3. `03_measures_explore.sql` — key measures and totals.
4. `04_sales_trends.sql` — sales trends over time.
5. `05_day_time_analysis.sql` — performance by weekday and time of day.
6. `06_product_analysis.sql` — product performance.
7. `07_location_analysis.sql` — store-level comparisons.

See the `sql/` folder for the queries.

### 3. Power BI - Dashboard Development

The dashboard includes:

- KPI cards for revenue, transactions, quantity sold and average transaction value.
- A trend chart with a switch between month and day-of-week views.
- Product category performance.
- Interactive store and other data slicers.
- Dynamic key insights and business recommendations.

The data model uses a sales fact table with date, product and store dimensions.

## Key Insights

The following are the main patterns highlighted in the dashboard for the period Jan 2023 to June 2023.

- **Revenue trend:** Revenue increased from approximately R82K in January to R166K in June.
- **Time of day:** Morning sales accounted for approximately 56% of revenue, making mornings the largest sales period in the current view.
- **Product categories:** Coffee was the largest revenue-generating category, followed by tea.
- **Peak sales day:** Monday is currently identified as the strongest sales day in the dashboard.
- **Store performance:** The dashboard allows the owner to compare locations and investigate differences in sales performance.

These findings provide a starting point for understanding when customers buy, which products contribute most to revenue and where operational planning may have the greatest impact.

## Business Recommendations

Potential actions include preparing stock ahead of expected busy periods, aligning staffing with historical demand, reviewing lower-performing products and investigating differences between stores.

Recommendations should be validated against additional information such as stock availability, staffing costs and profit margins.

## Lessons Learned

This project strengthened my practical understanding of data preparation, SQL-based analysis, data modelling, DAX measures, interactive dashboard design and translating data into business-focused recommendations.

## Project Files

- `excel/` - workbook used for preparation and validation.
- `sql/` - SQL scripts.
- `powerbi/` - Power BI report and dashboard screenshot.
- `images/` - supporting project screenshots.

## Dataset

Maven Analytics coffee shop sales dataset from Kaggle.
