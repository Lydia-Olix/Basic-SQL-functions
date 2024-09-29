----STEP 1: CREATE A DATABASE CALLED shopXYZ_db	
CREATE DATABASE ShopXYZ_db;
----STEP 2: ACTIVATE THE DATABASE shopXYZ_db FOR USE DURING THIS PROJECT
USE ShopXYZ_db;
---STEP 3: CREATE A sales_data TABLE IN THE DATABASE
CREATE TABLE sales_data (
    sale_id INT PRIMARY KEY,
    rep_id INT,
    region VARCHAR(50),
    sales DECIMAL(10, 2));
----STEP 4: INSERT DATA INTO sales_data
	INSERT INTO sales_data (sale_id, rep_id, region, sales) VALUES
(1, 101, 'East', 1000.00),
(2, 102, 'East', 1500.50),
(3, 103, 'West', 2000.00),
(4, 104, 'West', 2500.75),
(5, NULL, 'West', 3000.00);
----STEP 5: CREAT THE TABLE representatives
CREATE TABLE representatives (
    rep_id INT PRIMARY KEY,
    sales_rep VARCHAR(100),
    region VARCHAR(50)
);
-----INSERTING INTO REPRESENTATIVES TABLE
INSERT INTO representatives (rep_id, sales_rep, region) VALUES
(101, 'John Doe', 'East'),
(102, 'Jane Smith', 'East'),
(105, 'Jim Beam', 'North'),
(106, 'Jill Jackson', 'North'),
(107, 'Jack Johnson', 'South');
------TO VIEW BOTH TABLES
SELECT * FROM sales_data;
SELECT * FROM representatives;
----TASK 1: INNER JOIN. Write a query to fetch sales data along with the names of the representatives 
	---where there is a match in both tables. Hint: Use INNER JOIN on rep_id.
SELECT s.sales, r.sales_rep
FROM sales_data s
INNER JOIN representatives r
ON s.rep_id = r.rep_id
WHERE s.region = 'EAST';

SELECT sales_data.sales, representatives.sales_rep
FROM sales_data INNER JOIN representatives
ON sales_data.rep_id = representatives.rep_id
OR
----IDEAL SITUATION
SELECT s.sales, r.sales_rep
FROM sales_data s
INNER JOIN representatives r
ON s.rep_id = r.rep_id;
----LEFT JOIN. Write a query to fetch all sales data (including unmatched rows) along with the names of the representatives in the West region.
	---Hint: Use LEFT JOIN.
SELECT s.sales, r.sales_rep
FROM sales_data s
LEFT JOIN representatives r
ON s.rep_id = r.rep_id
WHERE s.region = 'WEST';
----RIGHT JOIN. Write a query to fetch all representatives and their sales data in the North region, even if they don't have any sales.
	---Hint: Use RIGHT JOIN.
SELECT s.sales, r.sales_rep
FROM sales_data s
RIGHT JOIN representatives r
ON s.rep_id = r.rep_id
WHERE r.region = 'NORTH';
----FULL JOIN. Write a query to fetch all sales data and representative names, regardless of matches between them.
	---Hint: Use FULL JOIN.
SELECT s.sales, r.sales_rep
FROM sales_data s
FULL OUTER JOIN representatives r
ON s.rep_id = r.rep_id;
---TASK 2
---Using the sales_data table:

---Write a query to calculate the total sales (SUM) across all regions.
SELECT SUM (sales) AS total_sales
FROM sales_data;

---Using the sales_data table:
---Write a query to count the number of sales records (COUNT)
SELECT COUNT (*) AS total_sales
FROM sales_data;
---Using the sales_data table:
---Write a query to calculate the average sales amount (AVG)
SELECT AVG (sales) AS Averagse_Sales
FROM sales_data;
---Using the sales_data table:
------Using the sales_data table:
SELECT MAX (sales) AS Maximum_Sales
FROM sales_data;

---TASK 3
---Using the  representatives table for string manipulations:
---A. Write a query to concatenate the sales_rep and region of the representatives.
SELECT CONCAT (sales_rep, ' ', region) AS REP_REGION FROM representatives;

---B.Write a query to find the length of the sales_rep name.
SELECT sales_rep, LEN (sales_rep) AS Name_Length FROM representatives;

---C. Write a query to convert the sales_rep name to lowercase.
SELECT LOWER (sales_rep) AS lowercase_name FROM representatives;


---D. Write a query to trim any extra spaces from the region name.
SELECT TRIM (region) AS trimmed_region FROM representatives;

---TASK 4
---Create  a  table called sales with  the  following:

CREATE TABLE sales ( sale_id INT PRIMARY KEY, rep_id INT, sale_date DATE, amount DECIMAL(10, 2) );
INSERT INTO sales (sale_id, rep_id, sale_date, amount) 
VALUES (1, 101, '2024-09-15', 1000.00), (2, 102, '2024-09-16', 1500.50), (3, 103, '2024-09-17', 2000.00);

SELECT * FROM sales
---A. Write a query to get the current date
SELECT GETDATE();

---B. Write a query to add 7 days to the sale_date of each record
SELECT sales. *,
DATEADD (DAY, 7, sale_date) 
AS new_date
FROM sales;

------C. Write a query to format the sale_date as YYYY-MM-DD
SELECT sales. *, CONVERT (VARCHAR, sale_date, 23) AS formatted_date
FROM sales;

---TASK 5
---TRIM extra spaces in the sales_rep column
SELECT LTRIM (RTRIM (sales_rep)) AS trimmed_sales_rep
FROM representatives;

----REPLACE occurances of 'Doe' in sales_rep with the 'Johnson'
SELECT representatives. *, REPLACE (Sales_rep, 'Doe', 'Johnson') AS replaced_sales_rep 
FROM representatives;

---Write a query to sort sales data in descending order based on the sales amount.
SELECT * FROM sales_data
ORDER BY sales DESC

----Write a query to filter and fetch sales data where sales amount is greater than 1500.
SELECT *
FROM sales_data
WHERE sales > 1500

---TO FETCH ONLY UNIQUE REGION FROM THE SALES_DATA TABLE
SELECT DISTINCT region 
FROM sales_data;

---LIKE expression
SELECT * 
FROM sales_data
WHERE region LIKE '%EAST';

SELECT * FROM sales_data

---ISNULL expression
SELECT ISNULL (rep_id, 105) AS rep_id
FROM sales_data;

---NULLIF expression
SELECT sales_data.*, NULLIF (sales, 1000) AS sales
FROM sales_data

---COALESCE expression
---Replace NULL values in sales_data.rep_id with the text 'No Representative'
SELECT COALESCE (CAST, rep_id AS VARCHAR), 'No Representative') AS
representaive FROM sales_data;

