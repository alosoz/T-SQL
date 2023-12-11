--JOIN--

select * from Sales.Customers;

select * from Sales.Orders;

select *
from Sales.Customers as c , sales.Orders as o
where c.custid = o.custid

select o.orderid, o.orderdate, o.custid, c.companyname
from Sales.Customers as c , sales.Orders as o
where c.custid = o.custid


--INNER JOIN--
select orderid, orderdate, o.custid, companyname
from Sales.Customers as c , sales.Orders as o
where c.custid = o.custid  -- JOIN-condition --

--Modern way to inner-join  --
select orderid, orderdate, o.custid, companyname
from Sales.Customers as c 
	inner join sales.Orders as o ON c.custid = o.custid;


select *
from Sales.Orders as o inner join sales.OrderDetails as od ON o.orderid = od.orderid;

/*	NOT= select from where order by (people) insanlar bu sekilde okur
		from where selsect order by (by the system) system bu sekilde okur ve herzaman from dan okumaya ve calismaya baslar
*/


-- JOIN more then one table

select companyname
from Sales.Orders as o 
	inner join sales.OrderDetails as od ON o.orderid = od.orderid
	inner join sales.Shippers as s on o.shipperid = s.shipperid

select companyname, orderdate,unitprice, discount
from Sales.Orders as o 
	inner join sales.OrderDetails as od ON o.orderid = od.orderid
	inner join sales.Shippers as s on o.shipperid = s.shipperid


-- all the costumers with orders
select orderid, orderdate, c.custid, o.custid, companyname
from Sales.Customers as c 
	left outer join sales.Orders as o ON c.custid = o.custid;


-- costumers who has no order
select orderid, orderdate, c.custid, o.custid, companyname
from Sales.Customers as c 
	left outer join sales.Orders as o ON c.custid = o.custid
where o.custid is null ;


select orderid, orderdate, c.custid, o.custid, companyname
from Sales.Customers as c 
	full outer join sales.Orders as o ON c.custid = o.custid
where o.custid is null ;
	

-- INNER  OUTER (left, right, full)


-- count all the rows in the OrdersDetails table.

select count(*)
from Sales.OrderDetails


-- total price for orders (unitprice is mutiplicated by qty and we get for each order price 
---then with sum we add for each order id to total price)
select orderid, 
	sum(unitprice * qty)
from Sales.OrderDetails
group by orderid;

select orderid, 
	sum(unitprice * qty) as TotalPrices
from Sales.OrderDetails
group by orderid;

select  *
from sales.cathegories








