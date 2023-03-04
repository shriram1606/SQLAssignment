--Day 2
--create table employee

create table employee(
empid int,
empname varchar(40),
emailid varchar(40),
age int,
country varchar(20)
)

-- to check the scema of table
sp_help employee

--on student table we want apply constrints using alter query
--apply unique constraint in student table on alter query
alter table employee add constraint un_employee unique(emailid)

--apply primary key constraint in student table on alter query
alter table employee alter column empid int not null
alter table employee add constraint pk_employee primary key(empid)

--apply not null constraint in student table on alter query
alter table employee alter column empname varchar not null

--apply check constraint in student table on alter query
alter table employee add constraint chk_employee check(age>=18)

--apply default constraint in student table on alter query
alter table employee add constraint df_employee default ('india') for country

--used to drop command to remove the constrint
alter table employee drop constraint df_employee

--create two table tblDept and tblemployee used the foreign key
create table tblDept(
deptid int primary key,
deptname varchar(20)
)

--1 hr
--2 Admin

create table tblemployee(
empid int primary key,
empname varchar(30),
deptid int,
constraint fk_deptemp foreign key(deptid) references tbldept(deptid)
)

--apply foreign key constraint to alter query
alter table tblemployee add constraint fk1_deptemp foreign key(deptid) references tblDept(deptid)

--remove the table (remove the table and its schema from the DB)
drop table --tablename

--truncate table (remove the all records in the table)
truncate table --tablename

--rename the columnname that time used
sp_rename --tablename

-------------------------------------------------------------------------------------------------------------------------------------------------
--auto increment the value e.g auto increment the empid
--create table tblemployee(
--empid int primary key identity(1,1),
--)
--------------------------------------------------------------------------------------------------------------------------------------------------

--DML commands
--insert command(insert the record in table)
--insert into tablename values()

select * from tblDept

insert into tblDept values(1,'hr')
insert into tblDept values(2,'Admin')
insert into tblDept values(3,'devolopement')
insert into tblDept values(4,'tester')
insert into tblDept values(5,'tester')


select * from tblemployee
insert into tblemployee values(1,'pune',1)
insert into tblemployee values(2,'sahil',1)
insert into tblemployee values(3,'sushant',2)
insert into tblemployee values(4,'sachin',2)
insert into tblemployee values(5,'sai',2)
insert into tblemployee values(6,'sham',1)
insert into tblemployee values(7,'sanket',2)
insert into tblemployee values(8,'sagar',1)
insert into tblemployee values(9,'bhushan',2)
insert into tblemployee values(10,'chetan',1)
insert into tblemployee values(10,'ketan',3)

--update command(update command is used to update or modify the existing record)
update tblemployee set empname='chetan' where empid=10

--update command(update command is used to update or modify the existing all table record)
update tblemployee set empname='gaurav',deptid=2

--delete command(update command is used to delete or modify the existing record)
delete from tblemployee where empid=1

--update command(delete command is used to delete or modify the existing all table record)
delete from tblemployee

--add column salary in tblemployee
alter table tblemployee add salary decimal
alter table tblemployee add city varchar(20)
select * from tblemployee

--update the records using update query
update tblemployee set deptid=3,salary=35000,city='sangamner' where empid=3
update tblemployee set deptid=4,salary=45000,city='nashik' where empid=4
update tblemployee set deptid=5,salary=50000,city='sangamner' where empid=5
update tblemployee set deptid=1,salary=25000,city='pune' where empid=6
update tblemployee set deptid=2,salary=30000,city='nagpur' where empid=7
update tblemployee set deptid=3,salary=50000,city='nashik' where empid=8
update tblemployee set deptid=4,salary=35000,city='pune' where empid=9
update tblemployee set deptid=5,salary=45000,city='nagpur' where empid=10
update tblemployee set deptid=1,salary=25000,city='mumbai' where empid=1
update tblemployee set deptid=2,salary=50000,city='sangamner' where empid=2


--where
--clause used for condition
select * from tblemployee where empid=1
select * from tblemployee where deptid=3

--operators
select * from tblemployee where salary=25000
select * from tblemployee where salary<>50000 --<>indicate not equals
select * from tblemployee where salary>=35000
select * from tblemployee where salary<=35000
select * from tblemployee where salary>35000
select * from tblemployee where salary<35000


--distinct
--distinct is used to return only different values.
select distinct city from tblemployee
select distinct salary from tblemployee

--in and not in operator
--in and not  in operator used select multiple possible values
select * from tblemployee where deptid in(3,5,1)
select * from tblemployee where empid  in(3,7,1)
select * from tblemployee where city in('pune','nagpur')

--not in
select * from tblemployee where deptid not in(3,5,1)
select * from tblemployee where empid not in(3,7,1)
select * from tblemployee where city not in('pune','nagpur')

--and,or and not operator
select * from tblemployee where city='pune' and salary=35000

--order by clause
--order by clause is used to sort the result acending and decending order
--in this example salary show in acending order
select * from tblemployee
order by salary

--in this example salary show in decending order
select * from tblemployee
order by salary desc

select * from tblemployee
order by empname 


select * from tblemployee
order by empname desc

