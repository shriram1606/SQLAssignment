--Assignment 
--1 create table product (id,name,price,company)

create table prod1
(
 id int primary key,
 name varchar(20),
 price int,
 company varchar(30)
 )

 insert into prod1 values(101,'ac',34000,'ab')
  insert into prod1 values(102,'fan',15000,'cd')
   insert into prod1 values(103,'chair',1000,'ef')
    insert into prod1 values(104,'table',8000,'gh')
	 insert into prod1 values(105,'LCD',25000,'ij')
	  insert into prod1 values(106,'rheater',7000,'kl')
	   insert into prod1 values(107,'torch',4000,'mn')

	   select * from prod1
	   update prod1 set company='mn' where id=107

	   --2  display the product with highest price to lowest price into prod1 table
	   select top 3 * from prod1
	   order by price desc

	  --3 display productname whose price is lowest price in product table
         select  min(price) as 'low price'  from prod1 

	 --4 display the product with lowest to highest price 
	 select * from prod1
	 order by price 
	 offset 3 rows
	 fetch next 4 rows only

	 --5 display product detail with alphabetical order of product name and price
	 select * from prod1
	 order by name

	 --6 display product detail with alphabetical order of company name and price
	 select * from prod1
	 order by company
