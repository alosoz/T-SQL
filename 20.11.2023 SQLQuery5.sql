
select empid, firstname, lastname
from HR.Employees;

select *
from HR.Employees


select *
from HR.Employees
where empid = 4 or empid = 6;

select *
from HR.Employees
where empid in (4,6)
order by birthdate;


select *
from HR.Employees
where country = 'USA';

select *
from HR.Employees
order by firstname ;

select *
from HR.Employees
where titleofcourtesy in ('Ms.','Mrs.') and country = 'UK'
order by firstname ;


select *
from HR.Employees
where year(birthdate) = 1973;


select empid, year(birthdate)
from HR.Employees;

select empid, year(birthdate), month(birthdate)
from HR.Employees;

select * from HR.Employees
where region is Null;

select * from HR.Employees
where region is not Null;

select * from HR.Employees
where firstname like 'S%'

select * from HR.Employees
where firstname like 'S%'

select * from HR.Employees
where lastname like '____'

select * from HR.Employees
where lastname like '_u__'

select * from HR.Employees
where lastname like '_U__'

select empid, year(birthdate) AS BirthsYear
from HR.Employees

select empid AS empidentity, year(birthdate) AS BirthsYear
from HR.Employees

select empid AS empidentity, year(birthdate) AS [Births Year]
from HR.Employees

/*advices dont use single code ';*/
-- comment yapar

select empid AS empidentity, year(birthdate) AS 'Births Year' 
from HR.Employees


select empid AS empidentity, year(birthdate) AS "Births Year"
from HR.Employees

select * from HR.Employees
where empid > 3 and empid < 8 ;

select * from HR.Employees
where empid >= 3 and empid <= 8 ;

select * from HR.Employees
where empid between 3 and 8 ;


select * from Sales.Customers;

select count(*) from Sales.Customers;

select count(*) as NumberOfRaws from Sales.Customers;


select country from Sales.Customers
group by country;

select country, count(*) as NumberOfRecords from Sales.Customers
group by country;

select country, count(*) as NumberOfRecords from Sales.Customers
group by country
order by NumberOfRecords;


select country, city, count(*) as NumberOfRecords from Sales.Customers
group by country, city
order by NumberOfRecords DESC;



select * from Sales.Customers;





