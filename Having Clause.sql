use pr;

select dept,count(dept)
from emp inner join empsa
on emp.empid=empsa.empid
group by dept
having count(dept)>3;

select dept,avg(salary)
from emp inner join empsa
on emp.empid=empsa.empid
group by dept
having avg(salary)>=40000
order by avg(salary);