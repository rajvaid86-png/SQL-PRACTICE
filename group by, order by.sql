use practice;

create table employee(empid int auto_increment primary key, empname varchar(50),age int, gender varchar(50));

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


select * from employee;
select gender from employee
group by gender;
select gender,count(gender) from employee 
group by gender;
select gender,age,count(gender) from employee 
group by gender ,age;

select gender,age,count(gender) 
 from employee where age>25
group by gender;

select age,gender,count(gender) as countgender
 from employee 
group by gender,age
order by age;

select * from employee order by age desc;

select * from employee order by 3 desc,4 desc;
