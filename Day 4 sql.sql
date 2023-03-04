-- like operator in SQL

select * from tblemployee
--all record of employee
select * from tblemployee where empname='sushant'

--the empname is starting with c
select * from tblemployee where empname like 'c%'

-- the empname end with n letter
select * from tblemployee where empname like '%n'

--the k letter present in the empname
select * from tblemployee where empname like '%k%'

--the starting letter of g and t between letters
select * from tblemployee where empname like '[g-t]%'

--the ending letter of g and t between letters
select * from tblemployee where empname like '%[g-t]'

--the middle letter of g and t between letters
select * from tblemployee where empname like '%[g-t]%'

--the empname start with b,s,c
select * from tblemployee where empname like '[bsc]%'

--the empname end with n,r,t
select * from tblemployee where empname like '%[nrt]'

--the empname start with s with next 4 letters
select * from tblemployee where empname like 'S____'

--the empname end with r with first 4 letters
select * from tblemployee where empname like '____r'

----the empname first 2 letter then h and then two letter
select * from tblemployee where empname like '__h__'

--those name not start with n
select * from tblemployee where empname not like 'n%'

--those name include a,s,o letters
select * from tblemployee where empname not like '[aso]%'

update tblemployee set city=null where empid in (2,4,7)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Null values - if column contains null value we can not use compare operator
-- is null
select * from tblemployee where salary>35000
select * from tblemployee where city is null

-- is not null
select * from tblemployee where salary is not null
select * from tblemployee where city is not null


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TOP operator 
select top 3 * from tblemployee
order by salary desc

select top 3 * from tblemployee
order by salary,empname

select top 10 percent * from tblemployee
order by salary desc

--ties means match or same col- that we put in order by cluase
--ties means showthe same salary acending or decending order

select top 5 with ties * from tblemployee
order by salary desc

select top 8 with ties * from tblemployee
order by salary 

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--offset & fetch
--offset is used to skip the records
-- after skip how many records we want that will be added in the fetch
-- offset is used with combination of order by 
-- fetch is optional


select * from tblemployee
order by salary 
offset 3 rows

--fetch means show the next 3 records
--offset skip the record
select * from tblemployee
order by salary desc
offset 3 rows
fetch next 3 rows only
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------