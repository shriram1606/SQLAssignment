--Day 1
--DDl command

create table person(
personid int,
name varchar(40),
city varchar(20),
salary decimal
)


--create student table and apply constraints
create table student(
id int primary key,
name varchar(20) not null,
emailid varchar(40) unique,
age int check(age>=18),
country varchar(45) default ('india')
)

--to check the (structure)schema of table
sp_help student

--alter query is for modification in the existing table
alter table student alter column name varchar(40)

--add column to existing table
alter table student add prn int

--remove the column from the table
alter table student drop column prn

-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
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
insert into tblDept values(1,'devolopement')

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
select * from tblemployee

update tblemployee set salary=50000 where deptid=1
update tblemployee set salary=45000 where deptid=2


select empname from tblemployee where salary=45000
select empname from tblemployee where salary=50000








