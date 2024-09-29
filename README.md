# Basic-SQL-functions
**## This project serves as an introduction to fundamental SQL functions such as MAX, AVG, CONCAT, NULLIF, INNER JOIN, LEFT JOIN, RIGHT JOIN and others.**
**# QUESTION**
### Create  a  database  Shopxyz_db
CREATE DATABASE ShopXYZ_db;
### *Scenario: You have two tables, sales_data and representatives, as described in the example provided. Using these tables, write queries that demonstrate different types of joins*.
CREATE TABLE sales_data


INSERT INTO sales_data 


CREATE TABLE representatives


INSERT INTO representatives


### Task 1
**Inner Join**: Write a query to fetch sales data along with the names of the representatives where there is a match in both tables.
Hint: Use INNER JOIN on rep_id.

Left Join: Write a query to fetch all sales data (including unmatched rows) along with the names of the representatives in the West region.
Hint: Use LEFT JOIN.

Right Join: Write a query to fetch all representatives and their sales data in the North region, even if they don't have any sales.
Hint: Use RIGHT JOIN.

Full Join: Write a query to fetch all sales data and representative names, regardless of matches between them.
Hint: Use FULL JOIN.

### Task 2
Using the sales_data table:


Write a query to calculate the total sales (SUM) across all regions.

Write a query to count the number of sales records (COUNT).

Write a query to calculate the average sales amount (AVG).

Write a query to find the maximum sales amount (MAX).

### Task 3
Using the  representatives table for string manipulations:

Write a query to concatenate the sales_rep and region of the representatives.

Write a query to find the length of the sales_rep name.

Write a query to convert the sales_rep name to lowercase.

Write a query to trim any extra spaces from the region name.

### Task  4
Create  a  table called sales

INSERT INTO sales table

Write a query to get the current date.

Write a query to add 7 days to the sale_date of each record.

Write a query to format the sale_date as YYYY-MM-DD.

### Task 5
Write a query to trim extra spaces in the sales_rep column.

Write a query to replace occurrences of 'Doe' in sales_rep with 'Johnson'.

Write a query to sort sales data in descending order based on the sales amount.

Write a query to filter and fetch sales data where sales amount is greater than 1500.
