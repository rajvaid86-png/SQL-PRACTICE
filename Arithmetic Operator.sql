select empname, salary+1000 as new_salary
from emp e inner join empsa s
on e.empid=s.empid;

select empname, salary-500 as after_tax
from emp e inner join empsa s
on e.empid=s.empid;

select empname, salary*12 as annual_salary
from emp e inner join empsa s
on e.empid=s.empid;

select empname, salary/count(salary) as avg_salary
from emp e inner join empsa s
on e.empid=s.empid;

select empname, salary%1000 as remainder
from emp e inner join empsa s
on e.empid=s.empid;


