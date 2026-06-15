# Task 3: SQL Data Analysis

# Project Goal
The goal of this project is to use PostgreSQL and pgAdmin to manage a sales_data, write structured SQL queries to filter through records, and extract critical business performance metrics.
This folder contains the SQL scripts used to load, clean, and analyze the transaction dataset. The analysis focuses on extracting key performance indicators (KPIs) such as total revenue, order statuses, product performance, and average transaction values. All queries reference the script file Task 3 SQL.sql`.

## Database Setup & Table Creation
Table Creation: Created a structured database table named sales_data with 14 target columns.
To begin the analysis, the raw dataset was loaded into a PostgreSQL database using the following schema. 
Import Strategy: To bypass structural trailing-comma limitations from the source CSV file, an extra placeholder column (Extra_Comma) was implemented to cleanly catch data rows without throwing import errors.
Once the 1,200 total dataset rows were successfully loaded into the database, the temporary column was permanently deleted using the ALTER TABLE sales_data DROP COLUMN Extra_Comma query.

### SQL Query
```sql
-- Creating the initial sales data table
CREATE TABLE sales_data (
    OrderID VARCHAR(50),
    Date DATE,
    CustomerID VARCHAR(50),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice VARCHAR(50),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice VARCHAR(50),
    Extra_Comma VARCHAR(50)
);

-- Drop the extra column that caused loading errors during import
ALTER TABLE sales_data 
DROP COLUMN Extra_Comma;

-- Verify the cleaned table structure
SELECT * FROM sales_data;

## SQL Queries and Key Insights
Key Business Metrics

# Query 1: Total Orders and Revenue KPI
Objective: Calculate the total volume of transactions, overall accumulated revenue, and the average order value using COUNT, SUM, and AVG.


### SQL Query


```sql
SELECT 
    COUNT(OrderID) AS Total_Orders,
    SUM(REPLACE(REPLACE(TotalPrice, '$', ''), ',', '')::NUMERIC) AS Total_Revenue
FROM sales_data;


### Results

| total_orders | total_revenue |
| :--- | :--- |
| **1200** | **1264761.96** |


# Core Insights:

Total Order Volume: The dataset contains a total of 1,200 recorded orders.

Gross Revenue: Total overall revenue generated reaches $1,264,761.96.


# Query 2: Segmenting Shipped Orders
Filters rows using a conditional clause WHERE to segment and focus exclusively on orders that have successfully reached the "Shipped" status.


### SQL Query

```sql
SELECT 
    OrderID, 
    Date, 
    Product, 
    Quantity, 
    UnitPrice, 
    TotalPrice, 
    OrderStatus
FROM sales_data
WHERE OrderStatus = 'Shipped';


### Results (Preview of Top Rows)

| orderid | date | product | quantity | unitprice | totalprice | orderstatus |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| ORD200000 | 2023-01-15 | Monitor | 5 | $570.62 | $2,853.10 | Shipped |
| ORD200001 | 2024-08-20 | Phone | 2 | $151.35 | $302.70 | Shipped |
| ORD200005 | 2023-10-10 | Phone | 2 | $245.86 | $491.72 | Shipped |
| ORD200007 | 2023-05-05 | Monitor | 5 | $149.55 | $747.75 | Shipped |
| ORD200009 | 2023-11-12 | Desk | 4 | $509.38 | $2,037.52 | Shipped |
| ORD200017 | 2024-03-01 | Tablet | 1 | $423.40 | $423.40 | Shipped |
*Note: Showing first 6 rows out of 235 total rows returned.*


# Core Insight:

Out of the 1,200 baseline rows present within the primary dataset, exactly 235 rows represent orders that have been successfully shipped to customers.


# Query 3: Top 5 Product Performance Analysis
Groups the total items sold and total revenue by specific product names to identify the top 5 highest-generating product categories.


### SQL Query

```sql
SELECT 
    Product,
    COUNT(OrderID) AS Items_Sold,
    SUM(REPLACE(REPLACE(TotalPrice, '$', ''), ',', '')::NUMERIC) AS Category_Revenue
FROM sales_data
GROUP BY Product
ORDER BY Category_Revenue DESC
LIMIT 5;


### Results
| product | items_sold | category_revenue |
| :--- | :--- | :--- |
| **Chair** | 178 | 195620.11 |
| **Printer** | 181 | 195612.61 |
| **Laptop** | 173 | 192126.56 |
| **Tablet** | 179 | 186568.95 |
| **Monitor** | 163 | 175651.41 |


# Core Insights:

Top Revenue Generator: Chair is the single highest-grossing product category, generating a total revenue of $195,620.11 across 178 individual orders.

Top Volume Performer: Printer generated the absolute highest volume of distribution with 181 items sold, finishing a close second in total revenue generation at $195,612.61.

General Standings: Laptop ($192,126.56), Tablet ($186,568.95), and Monitor ($175,651.41) round out the top five highly competitive products within the portfolio.


# Query 4: Average Order Value (AOV)
Calculates the average amount spent per transaction across the dataset.

### SQL Query

```sql
SELECT 
    AVG(REPLACE(REPLACE(TotalPrice, '$', ''), ',', '')::NUMERIC) AS Average_Order_Value
FROM sales_data;

### Results

| average_order_value |
| :--- |
| **$1,053.97** |

Core Insights:
Average Spending: The average amount spent by a customer per transaction is $1,053.97.

