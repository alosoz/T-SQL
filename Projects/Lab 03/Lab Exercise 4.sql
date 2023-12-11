---------------------------------------------------------------------
-- LAB 03
--
-- Exercise 4
---------------------------------------------------------------------

--USE TSQL;
--GO

---------------------------------------------------------------------
-- Task 1
-- Write a SELECT statement to display the categoryid and productname columns from the Production.Products table.
---------------------------------------------------------------------

select p.categoryid, p.productname, p.
from Production.Products as p

select categoryid, categoryname
from Production.Categories

---------------------------------------------------------------------
-- Task 2
-- Enhance the SELECT statement in task 1 by adding a CASE expression that generates a result column named categoryname. The new column should hold the translation of the category ID to its respective category name, based on the mapping table supplied earlier. Use the value “Other” for any category IDs not found in the mapping table.
---------------------------------------------------------------------

select p.categoryid, p.productname,
		case
		WHEN p.categoryid = 1 THEN 'Beverages'
			WHEN p.categoryid = 2 THEN 'Condiments'
			WHEN p.categoryid = 3 THEN 'Confections'
			WHEN p.categoryid = 4 THEN 'Dairy Products'
			WHEN p.categoryid = 5 THEN 'Grains/Cereals'
			WHEN p.categoryid = 6 THEN 'Meat/Poultry'
			WHEN p.categoryid = 7 THEN 'Produce'
			WHEN p.categoryid = 8 THEN 'Seafood'
			ELSE 'Other'
		END AS categoryname
from Production.Products as p


---------------------------------------------------------------------
-- Task 3
-- Modify the SELECT statement in task 2 by adding a new column named iscampaign. This will show the description “Campaign Products” 
-- for the categories Beverages, Produce, and Seafood and the description “Non-Campaign Products” for all other categories.
---------------------------------------------------------------------



select p.categoryid, p.productname,
		case
		WHEN p.categoryid = 1 THEN 'Beverages'
			WHEN p.categoryid = 2 THEN 'Condiments'
			WHEN p.categoryid = 3 THEN 'Confections'
			WHEN p.categoryid = 4 THEN 'Dairy Products'
			WHEN p.categoryid = 5 THEN 'Grains/Cereals'
			WHEN p.categoryid = 6 THEN 'Meat/Poultry'
			WHEN p.categoryid = 7 THEN 'Produce'
			WHEN p.categoryid = 8 THEN 'Seafood'
			ELSE 'Other'
		END AS categoryname,
		CASE
			WHEN p.categoryid IN (1,7,8) THEN 'Campaign Products'
			ELSE 'Non-Campaign Products'
		END AS iscampaing
from Production.Products as p