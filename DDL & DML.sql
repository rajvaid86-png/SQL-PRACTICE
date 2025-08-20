create database practice;
use practice;

create table students(
sid int,
name varchar(50),
class varchar(50),
age int
);
alter table students add column city varchar(50) after class;
alter table students drop column city;
alter table students drop column sid;

alter table students add column sid int auto_increment primary key first;


insert into students(name,class,age) values("arjun","10th",15);
INSERT INTO students (name, class, age) VALUES
('nav', '9th', 15),
('harsh', '10th', 15),
('pawan', '9th', 14),
('ram', '12th', 17),
('aman', '11th', 16),
('anjali', '10th', 15),
('luv', '12th', 17),
('yash', '9th', 14),
('laksh', '11th', 16),
('jai', '12th', 17);

select * from students;

delete from students where sid=11;

update students set age=14 where sid=1;

select * from students;

