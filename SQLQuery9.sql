select * from Production.Categories
select * from Production.Products


-- benim cozumum
select categoryname, count(productname)
from Production.Categories as c 
	inner join Production.Products as p 
	on c.categoryid = p.categoryid
group by categoryname


-- hocanin cozumu
select c.categoryid, c.categoryname, count(p.productid) as TotalNumber
from Production.Categories as c 
	inner join Production.Products as p 
	on c.categoryid = p.categoryid
group by c.categoryid, categoryname
order by TotalNumber



-- to see only this about products with an unicprice > 20

select c.categoryid, c.categoryname, count(p.productid) as TotalNumber
from Production.Categories as c 
	inner join Production.Products as p 
	on c.categoryid = p.categoryid
where p.unitprice > 20
group by c.categoryid, categoryname
order by TotalNumber


select c.categoryid, c.categoryname, count(p.productid)
from Production.Categories as c 
	inner join Production.Products as p 
	on c.categoryid = p.categoryid
group by c.categoryid, categoryname
having count(p.productid) > 10

-- FROM table(s) WHERE filters rows GROUP BY groups HAVING
-- filtered groups SELECT columns/calculations aggregated
-- ORDER BY









