use pr;

select empname,dept,salary
from emp e inner join empsa s
on e.empid=s.empid
where salary>60000 And dept='sales';


select empname,dept,salary
from emp e inner join empsa s
on e.empid=s.empid
where salary>60000 or dept='it';



select empname,dept
from emp e inner join empsa s
on e.empid=s.empid
where not dept='it';
