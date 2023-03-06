--Day 5
--column alise
--column alise used temparary name to the column

select name+' - '+ company as 'Product with Company' from Prod1

select name,name as 'Product name',price as 'Product price' from Prod1

select name as 'product name' from prod1

select company as 'company name' from prod1

--------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Aggregate function in SQL
-- count, sum, avg, max, min
-- returns a scalar value - single value
select * from  Product
select * from tblemployee

--count returns the scalar value
select count(pid) as 'Count' from Product

--count returns the only distinct name means reapeated name count at once
select count(distinct pname) as'Count' from Product

--count returns the only distinct name means reapeated name count at once
select count(distinct city) as 'city count' from tblemployee












select sum(price) as 'sum price' from Product

select sum(salary) as 'sum salary' from tblemployee


select avg(price) as 'avg price' from Product
select avg(salary) as 'avg salary' from tblemployee

select max(price) as 'max price' from Product
select min(price) as 'max price' from Product

select max(salary) as 'max salary' from tblemployee
select min(salary) as 'min salary' from tblemployee