---------------------------------------------------------------------
-- LAB 17
--
-- Exercise 4
---------------------------------------------------------------------

USE TSQL;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

CREATE SYNONYM dbo.Person 
FOR AdventureWorks.Person.Person;
GO

SELECT FirstName, LastName
FROM dbo.Person;

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

DROP SYNONYM dbo.Person;