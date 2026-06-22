# Pizza Hut Sales Analysis Using SQL Server

## Project Overview

This project analyzes Pizza Hut sales data using Microsoft SQL Server. The objective is to extract meaningful business insights from transactional sales data using SQL queries, joins, aggregations and window functions.

The project demonstrates how SQL can be used for real-world business analytics and decision-making.

---

## Dataset Description

The dataset consists of four tables:

### Orders
Contains information about customer orders.

### Order Details
Contains details of pizzas ordered in each transaction.

### Pizzas
Contains pizza sizes and prices.

### Pizza Types
Contains pizza names, categories, and ingredients.

---

## Database Schema
Relationships used:
* Orders → Order Details
* Order Details → Pizzas
* Pizzas → Pizza Types
---
## Tool Used
* Microsoft SQL Server (SSMS)

---

## Business Questions Solved

### Basic Analysis

1. Retrieve total number of orders placed.
2. Calculate total revenue generated.
3. Identify the highest-priced pizza.
4. Identify the most common pizza size ordered.
5. List the top ordered pizza types by quantity.

### Intermediate Analysis

1. Total quantity sold by pizza category.
2. Distribution of orders by hour of the day.
3. Category-wise pizza distribution.
4. Average number of pizzas ordered per day.
5. Top 3 pizza types based on revenue.

### Advanced Analysis

1. Percentage contribution of each pizza type to total revenue.
2. Cumulative revenue generated over time.
3. Top 3 pizza types by revenue within each category.

