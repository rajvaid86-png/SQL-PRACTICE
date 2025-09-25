use pr;

select empname from emp e inner join empsa s
on e.empid=s.empid
where salary>(select avg(salary) from empsa);

select empid, empname 
from emp
where empid IN(select empid from empsa);

select empname from emp e
where exists(select empid,salary from empsa s where  e.empid=s.empid and salary>40000);