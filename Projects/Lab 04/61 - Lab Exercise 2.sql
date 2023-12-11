---------------------------------------------------------------------
-- LAB 04
--
-- Exercise 2
---------------------------------------------------------------------

-- USE TSQL;
-- GO

---------------------------------------------------------------------
-- Task 1
-- 
--
-- Execute the query exactly as written inside a query window and observe the result.
--
-- You get an error. What is the error message? Why do you think you got this error? 
---------------------------------------------------------------------
 
SELECT 
	custid, contactname, orderid
FROM Sales.Customers  
INNER JOIN Sales.Orders ON Customers.custid = Orders.custid;




---------------------------------------------------------------------
-- Task 2
-- 
-- Notice that there are full source table names written as table aliases. 
--
-- Apply the needed changes to the SELECT statement so that it will run without an error. Test the changes by executing the T-SQL statement.
--
-- Observe and compare the results that you got with the recommended result shown in the file 62 - Lab Exercise 2 - Task 2 Result.txt. 
---------------------------------------------------------------------

-- BECAUSE WE HAVE JOINED TWO TABLE AND FK IS custid BOTH TABLE HAVE THAT WE NEED TO CHOUSE FROM ONE OF THE TABLE. 
SELECT 
	Customers.custid, contactname, orderid
FROM Sales.Customers  
INNER JOIN Sales.Orders ON Customers.custid = Orders.custid;


---------------------------------------------------------------------
-- Task 3
-- 
-- Copy the T-SQL statement from task 2 and modify it to use the table aliases “C” for the Sales.Custumers 
-- table and “O” for the Sales.Orders table.
--
-- Execute the written statement and compare the results with the results in task 2.
--
-- Change the prefix of the columns in the SELECT statement with full source table names and execute the statement.
--
-- You get an error. Why?
--
-- Change the SELECT statement to use the table aliases written at the beginning of the task.
---------------------------------------------------------------------

SELECT 
	c.custid, c.contactname, o.orderid
FROM Sales.Customers AS c  
INNER JOIN Sales.Orders AS o ON c.custid = o.custid;


-- produce an error
SELECT 
	Customers.custid, Customers.contactname, Orders.orderid
FROM Sales.Customers AS c
INNER JOIN Sales.Orders AS o ON c.custid = o.custid;

---------------------------------------------------------------------
-- Task 4
-- 
-- Copy the T-SQL statement from task 3 and modify it to include three additional columns from the Sales.OrderDetails table:
-- productid, qty, and unitprice.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 
-- 63 - Lab Exercise 2 - Task 4 Result.txt. 
---------------------------------------------------------------------


SELECT 
	c.custid, c.contactname, o.orderid, d.productid, d.qty, d.unitprice
FROM Sales.Customers AS c  
INNER JOIN Sales.Orders AS o ON c.custid = o.custid
INNER JOIN Sales.OrderDetails AS d ON o.orderid = d.orderid

