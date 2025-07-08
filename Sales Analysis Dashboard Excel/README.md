**Sales Analysis Dashboard – Project Report**

**Introduction**

This project aims to provide a clear, interactive view of sales trends to business decision-makers. The dashboard consolidates data into actionable insights that can identify growth opportunities and inefficiencies across products, time periods, and regions.

**Tool Used:** Excel

**Dataset Source:** Kaggle sales data

**Data Format:** CSV

**Size:** ~9,995 rows, 22 columns

**Features Include:**
 
•	Row ID         •	Order ID      •	Order Date      •	Ship Date
•	Ship Mode      •	Customer ID   •	Customer Name   •	Segment
•	Country        •	City          •	State           •	Postal Code
•	Region         •	Product ID    •	Category        •	Sub-Category
•	Product Name   •	Sales         •	Quantity        •	Discount
•	Profit
 

**Objectives:**

•	Identify the most and least profitable product categories and sub-categories.
•	Determine the month with the highest and lowest sales
•	Analyze seasonal trends in sales and profitability across the year.
•	Evaluate which cities contribute the most and least to total sales and profit.
•	Detect cities with high sales volumes but poor profitability.
•	Define and track key performance indicators such as total sales, total profit, average order value (aov), and profit margin.
•	Identify the top-performing products and cities based on sales and profit.
•	Compare customer segments to understand their relative impact on sales and profitability.
•	Assess how different shipping modes affect delivery speed.

**Process Overview**

**1.	Data Preparation:**
Converted raw dataset into an Excel Table for dynamic referencing and structured formatting.

**2.	Data Analysis:**
o	Created multiple Pivot Tables to analyze sales, profit, quantity, and trends across various dimensions:
-Category, Sub-Category
-Region
-Monthly trend
-Ship Mode

**3.	Dashboard Creation:**
Built a clean, interactive Dashboard Sheet using:
-KPI Cards
-Charts (Bar, Line, Column, Pi and Radar)
-Slicers for filters (e.g., Category, Segment)
-Linked visuals to Pivot Tables for dynamic updates
![Picture1](https://github.com/user-attachments/assets/5b24876e-4680-4467-a195-59198bb976e9)


**Key Insights**

**•	Category Analysis:**
o	Technology was the most profitable category with highest sales.
o	Furniture had lower profit margins.
o	Copier was the most profitable item while Tables were least.

**•	Time Trends:**
o	Orders peaked in November and December during Holiday season.
o	Lowest order volume was in February.

**•	City Performance:**
o	New York and Los Angeles were top-performing cities.
o	Philadelphia had high sales but least profit due to consistent discounts.

**•	Shipping Mode:**
o	Same Day shipping had the fastest delivery but lower profits due to cost.
o	Standard class was the most preferable mode.

**Excel Features Used**
•	Excel Table for structured, dynamic data
•	Pivot Tables for summarizing and slicing data
•	Slicers for interactive filtering
•	Pivot Charts for visual representation
•	Custom KPI Cards using cell formatting and shapes
•	Conditional Formatting for highlighting key metrics
•	Formulas: SUMIFS, AVERAGEIFS, TEXT, IF, INDEX/MATCH

