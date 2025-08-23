 -- UNION & UNION ALL 
 use pr;
 alter table employee rename emp;
 select * from emp;
 
 create table emp1(empid int ,empname varchar(50),age int,gender varchar(50));
insert into emp1(empid,empname,age,gender)values(12,'monika',30,'female'),
(13,'harsh',22,'male'),
(14,'jatin',25,'male'),
(15,'rishabh',29,'male');
 
 select * from emp
 union
 select* from emp1;
 
 
 select * from emp
 union all
 select* from emp1;
 
select empid, empname as col2, age as col3 from emp
union all
select empid, dept as col2, salary as col3 from empsa;
