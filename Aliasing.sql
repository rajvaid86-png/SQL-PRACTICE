use pr;

    -- ALAISING COLUMN
select empname as employee,
	   salary as monthlySalary
from emp inner join empsa
on emp.empid=empsa.empid;

      -- ALAISING TABLE
select e.empid,s.dept
from emp as e inner join empsa as s
on e.empid=s.empid;      