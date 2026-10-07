-- SHOW all tabe 

SELECT * FROM excel_practice_formulas;

-- SQL query to retrieve all rows where the category is equal to Electronics

SELECT * FROM excel_practice_formulas
WHERE Category='Electronics';

-- find all rows where the price is greater than 5000.

SELECT *
FROM excel_practice_formulas
where price > 5000;

-- What if you want to see all your products, but you want them arranged by price from lowest to highest?

SELECT *
FROM excel_practice_formulas
 ORDER BY Price ASc;
 
-- find the total sum of all the prices combined in your table, the query looks like this:

SELECT sum(price) 
FROM excel_practice_formulas;

-- find the total sum of the quantity column instead of price.

SELECT sum(Quantity) 
FROM excel_practice_formulas

-- find the total quantity for each category (separately for Electronics, Clothing,

SELECT Category, sum(quantity) 
FROM excel_practice_Formulas
GRoup BY Category;

-- Sorting Grouped Data

SELECT Category, SUM(quantity)
FROM excel_practice_formulas
GRoup by Category
ORder by sum(quantity) DESC;

-- Write a query to find the average price of all products in your excel_practice_formulas table.

SELECT avg(price)
FROM excel_practice_formulas;

-- What if you want to know how many products are in each category?

SELECT category, count(*)
FROM excel_practice_formulas
GROUP BY category;

-- Write a query to find the total quantity for each category, but only include rows where the price > 1000.

SELECT category, SUM(quantity) 
FROM excel_practice_formulas 
WHERE price > 1000 
GROUP BY category;

-- Write a query to group by category, calculate the total quantity, but only show categories where the SUM(quantity) > 50.

SELECT Cateogory, sum(quantity)
FROM excel_practice_formulas
Group by Category
Having sum(quantity) > 50;

