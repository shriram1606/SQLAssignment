--Day3
--Assignment

--1.	Write a statement that will select the City column from the Customers table
create table customer
(
custid int primary key,
name varchar(20),
city varchar(25),
pincode int,
country varchar(20)
)
select * from customer

insert into customer values(100,'omkar','sangamner',422605,'india')
insert into customer values(101,'sushant','pune',422606,'japan')
insert into customer values(102,'vishal','nashik',422607,'us')
insert into customer values(103,'saurabh','mumbai',422608,'uk')
insert into customer values(104,'satish','nagpur',422609,'japan')
insert into customer values(105,'chetan','sangamner',422605,'india')
insert into customer values(106,'bhushan','pune',422606,'japan')
insert into customer values(107,'sagar','nashik',422607,'us')
insert into customer values(108,'santosh','mumbai',422608,'uk')
insert into customer values(109,'sandip','nagpur',422609,'japan')
insert into customer values(110,'kshitij','sangamner',422605,'india')

--2.	Select all the different values from the Country column in the Customers table.
select  distinct country from customer

--3.	Select all records where the City column has the value "London
select *from customer where city='sangamner'

--4.	Use the NOT keyword to select all records where City is NOT "Berlin".
select *from customer where city not in( 'mumbai')

--5.	Select all records where the CustomerID column has the value 23.
select * from customer where custid=105

--6.	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from customer where city='nashik' and pincode=422607

--7.	Select all records where the City column has the value 'Berlin' or 'London'.
select * from customer where city='nagpur'or city='mumbai'

--8.	Select all records from the Customers table, sort the result alphabetically by the column City.
select * from customer
order by city

--9.	Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customer
order by city desc

--10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select *from customer
order by country,city

--11.	Select all records from the Customers where the PostalCode column is empty.
select * from customer
where pincode is null

--12.	Select all records from the Customers where the PostalCode column is NOT empty
select * from customer
where pincode is not null

--13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update customer set city='akole' where country='japan'


--14.	Delete all the records from the Customers table where the Country value is 'Norway'.
delete  from customer where country='japan'

--20.	Select all records where the value of the City column starts with the letter "a".
select * from customer where city like 'a%'

--21.	Select all records where the value of the City column ends with the letter "a".
select * from customer where city like '%r'

--22.	Select all records where the value of the City column contains the letter "a".
select * from customer where city like '%a%'

--23.	Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select *from customer where city like 'n%k'

--24.	Select all records where the value of the City column does NOT start with the letter "a".
select * from customer where city not like 'a%'

--25.	Select all records where the second letter of the City is an "a".
select * from customer where city not like 's%'

--26.	Select all records where the first letter of the City is an "a" or a "c" or an "s".
select *from customer where city like '[ans]%'

--27.	Select all records where the first letter of the City starts with anything from an "a" to an "f".
select *from customer where city like '[sn]%'

--28.	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select *from customer where city not like '[ans]%'

--29.	Use the IN operator to select all the records where the Country is either "Norway" or "France".
select *from customer where country in ('india','us')

--30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select *from customer where country not in ('india','us')

--35.	When displaying the Customers table, refer to the table as Consumers instead of Customers
select * from customer as consumers

--36.	List the number of customers in each country.
select count(custid) country from customer
group by country

--37.	List the number of customers in each country, ordered by the country with the most customers first.
select count(custid) country from customer 
group by country 
order by
count(custid) desc

--34.	When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead
select pincode as 'pno' from customer

--40.	Add a column of type DATE called Birthday in Persons table
alter table customer add cbirth date
select *from customer

--41.	Delete the column Birthday from the Persons table
alter table customer drop column cbirth

--------------------------------------------------------------------------------------------------------------------------------------------
create table product
(
pid int primary key,
pname varchar(15),
price int
)

insert into product values(10,'laptop',40000) 
insert into product values(11,'charger',7000)
insert into product values(12,'pc',5000)
insert into product values(13,'hardisk',2000)
insert into product values(14,'powercable',150)
insert into product values(15,'laptop',40000) 
insert into product values(16,'charger',7000)
insert into product values(17,'pc',5000)
insert into product values(18,'hardisk',2000)
insert into product values(19,'powercable',150)

--15.	Use the MIN function to select the record with the smallest value of the Price column.
select Min(price) as ' min price' from product

--16.	Use an SQL function to select the record with the highest value of the Price column.
select max(price) as ' max price' from product

--17.	Use the correct function to return the number of records that have the Price value set to 20
select count(*) from product  where price=150

--18.	Use an SQL function to calculate the average price of all products.
select avg(price) as 'price' from product

--19.	Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(price) as ' sum price' from product

--31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from product where price between 150 and 40000

--32.	Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from product where price not between 150 and 40000

--33.	Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from product where pname  between 'laptop' and 'powercable'

