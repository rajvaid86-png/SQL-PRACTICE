use pr;

create temporary table temp_table
(
first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100)
);

insert into temp_table
values('Raj','Vaid','F1');

select * from temp_table;

create temporary table salaryOver_50k
select empname,salary
from emp e inner join empsa s on
e.empid=s.empid
where salary>=50000;

select* from salaryOver_50k;
