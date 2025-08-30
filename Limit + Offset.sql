use pr;
select * from emp 
limit 3;

select e.empname,e.age, s.salary 
from emp as e inner join empsa as s
on e.empid=s.empid
order by salary desc
limit 1 offset 1;                           -- 2nd Highest Salary