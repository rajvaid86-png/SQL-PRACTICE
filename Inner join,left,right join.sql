create database pr;
use pr;
create table employee(empid int primary key auto_increment,empname varchar(50),age int,gender varchar(50));
truncate employee;
insert into employee(empname,age,gender) values('aman',21,'male'),
('ayushi',21,'female'),
('raman',22,'male'),
('khushi',22,'female'),
('yash',23,'male'),
('jigyasa',24,'female'),
('laksh',25,'male'),
('sejal',26,'female'),
('vinay',27,'male'),
('mehak',28,'female'),
('divanshu',29,'male'),
('monika',30,'female');

select* from employee;
create table empsa(empid int auto_increment primary key,dept varchar(50),salary int);
insert into empsa(dept, salary) 
values
('hr', 50000),
('it', 55000),
('sales', 61000),
('hr', 25000),
('sales', 32000),
('it', 22000),
('sales', 29000),
('it', 54000),
('it', 33000),
('hr', 41000);


select* from employee inner join empsa on employee.empid=empsa.empid;
select* from employee left join empsa on employee.empid=empsa.empid;
select* from employee right join empsa on employee.empid=empsa.empid;
select employee.empid,empname,age,dept,salary from employee inner join empsa on employee.empid=empsa.empid;

select employee.empid,empname,age,dept,salary from employee
 inner join empsa on employee.empid=empsa.empid
 where empname<>'raman'
 order by salary desc;



select dept,avg(salary) from employee
 inner join empsa on employee.empid=empsa.empid
 where dept='sales'
 group by dept;
